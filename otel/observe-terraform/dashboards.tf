# =============================================================================
# Oracle RAC Observability — Dashboard Definitions (Full Layout Format)
# =============================================================================
locals {
  ds = {
    datasetId   = observe_dataset.oracle_rac_all.id
    datasetPath = null
    inputName   = "Oracle RAC Metrics"
    inputRole   = "Data"
    stageId     = null
  }

  _dtv = {
    autoExpandColumnWidth       = false
    cellValuePresentation       = []
    columnOrderOverride         = []
    columnVisibility            = []
    columnWidths                = []
    defaultColumnWidth          = 70
    disableFixedLeftColumns     = false
    minColumnWidth              = 60
    preserveCellAndRowSelection = true
    rowHeights                  = []
    selection = {
      cells                = {}
      columnSelectSequence = []
      columns              = {}
      highlightState       = {}
      rows                 = {}
      selectionType        = "table"
    }
    tableWidth = 0
    viewType   = "Auto"
  }

  _rk = [
    "ResultKindSchema",
    "ResultKindData",
    "ResultKindColumnStats",
    "ResultKindVolumeStats",
    "ResultKindProgress",
  ]

  _vm = {
    builderOpalTab       = "OPAL"
    inspectRailCollapsed = true
    inspectRailPinned    = false
    inspectRailWidth     = 640
    railCollapseState = {
      inputsOutputs = false
      minimap       = false
      note          = true
      script        = true
    }
    showTimeRuler = true
    stageTab      = "vis"
  }

  # ===========================================================================
  # Singlevalue metrics
  # ===========================================================================
  _sv_metrics = {
    inst_up  = { opal = "filter metric = \"oracle_up\"\naggregate up:last(value)",                             field = "up",      label = "Instance Up" }
    uptime   = { opal = "filter metric = \"oracle_instance_uptime_seconds\"\nmake_col hours: value / 3600\naggregate hours:last(hours)", field = "hours", label = "Uptime (hours)" }
    proc_cnt = { opal = "filter metric = \"oracle_process_count\"\naggregate val:last(value)",                 field = "val",     label = "Process Count" }
    long_sql = { opal = "filter metric = \"oracle_long_running_sql\"\naggregate count:count(value)",           field = "count",   label = "Long Running SQL" }
    redo     = { opal = "filter metric = \"oracle_redo_log_switches_per_hour\"\naggregate val:last(value)",    field = "val",     label = "Redo Switches/hr" }
    dg_lag   = { opal = "filter metric = \"oracle_dataguard_lag_seconds\"\naggregate lag_sec:max(value)",      field = "lag_sec", label = "DG Lag (sec)" }
    blocked  = { opal = "filter metric = \"oracle_blocked_sessions_total\"\naggregate blocked:sum(value)",     field = "blocked", label = "Blocked Sessions" }
  }

  # ===========================================================================
  # Bar chart metrics
  # ===========================================================================
  _bar_metrics = {
    sessions     = { opal = "filter metric = \"oracle_session_count\"\naggregate count:sum(value), group_by(session_type)",        x = "session_type",y = "count",    label = "Sessions by Type",     yLabel = "Sessions" }
    sga          = { opal = "filter metric = \"oracle_sga_bytes\"\naggregate bytes:avg(value), group_by(name)",                    x = "name",       y = "bytes",    label = "SGA Memory",           yLabel = "Bytes" }
    tbs_used     = { opal = "filter metric = \"oracle_tablespace_used_pct\"\naggregate pct:last(value), group_by(tablespace)",     x = "tablespace", y = "pct",      label = "Tablespace Usage %",   yLabel = "Used %" }

    ash          = { opal = "filter metric = \"oracle_ash_active_sessions\"\naggregate sessions:sum(value), group_by(wait_class)", x = "wait_class", y = "sessions", label = "ASH by Wait Class",    yLabel = "Sessions" }
  }

  # ===========================================================================
  # Timeseries metrics
  # ===========================================================================
  _ts_metrics = {
    cache_hit  = { opal = "filter metric = \"oracle_buffer_cache_hit_ratio\"\ntimechart options(empty_bins:true), ratio:avg(value), group_by(instance)",                            y = "ratio",  group = ["instance"],                 label = "Cache Hit Ratio",      yLabel = "Hit %" }
    pga        = { opal = "filter metric = \"oracle_pga_stat\"\ntimechart options(empty_bins:true), val:avg(value), group_by(instance, name)",                            y = "val",    group = ["instance", "name"],        label = "PGA Statistics",       yLabel = "Bytes" }
    sysstat    = { opal = "filter metric = \"oracle_sysstat\"\ntimechart options(empty_bins:true), val:rate(value), group_by(instance, name)",                            y = "val",    group = ["instance", "name"],        label = "System Statistics",    yLabel = "Rate" }
    wc_waits   = { opal = "filter metric = \"oracle_wait_class_total_waits\"\ntimechart options(empty_bins:true), waits:rate(value), group_by(instance, wait_class)",     y = "waits",  group = ["instance", "wait_class"],  label = "Wait Class Waits",    yLabel = "Waits/sec" }
    top_events = { opal = "filter metric = \"oracle_wait_event_time_seconds\"\ntimechart options(empty_bins:true), sec:rate(value), group_by(instance, event)",           y = "sec",    group = ["instance", "event"],       label = "Top Wait Events",     yLabel = "Seconds/sec" }
    ts_reads   = { opal = "filter metric = \"oracle_tablespace_physical_reads\"\ntimechart options(empty_bins:true), reads:rate(value), group_by(instance, tablespace)",  y = "reads",  group = ["instance", "tablespace"],  label = "Tablespace Reads",    yLabel = "Reads/sec" }
    ts_writes  = { opal = "filter metric = \"oracle_tablespace_physical_writes\"\ntimechart options(empty_bins:true), writes:rate(value), group_by(instance, tablespace)",y = "writes", group = ["instance", "tablespace"],  label = "Tablespace Writes",   yLabel = "Writes/sec" }
    sql_elapsed  = { opal = "filter metric = \"oracle_top_sql_elapsed_seconds\"\ntimechart options(empty_bins:true), sec:max(value), group_by(sql_id)",      y = "sec",    group = ["sql_id"],  label = "Top SQL Elapsed",     yLabel = "Seconds" }
    sql_cpu      = { opal = "filter metric = \"oracle_top_sql_cpu_seconds\"\ntimechart options(empty_bins:true), sec:max(value), group_by(sql_id)",          y = "sec",    group = ["sql_id"],  label = "Top SQL CPU",         yLabel = "Seconds" }
    sql_bufgets  = { opal = "filter metric = \"oracle_top_sql_buffer_gets\"\ntimechart options(empty_bins:true), gets:max(value), group_by(sql_id)",        y = "gets",   group = ["sql_id"],  label = "Top SQL Buffer Gets", yLabel = "Gets" }
    sql_diskreads= { opal = "filter metric = \"oracle_top_sql_disk_reads\"\ntimechart options(empty_bins:true), reads:max(value), group_by(sql_id)",        y = "reads",  group = ["sql_id"],  label = "Top SQL Disk Reads",  yLabel = "Reads" }
    sql_execs    = { opal = "filter metric = \"oracle_top_sql_executions\"\ntimechart options(empty_bins:true), execs:max(value), group_by(sql_id)",        y = "execs",  group = ["sql_id"],  label = "Top SQL Executions",  yLabel = "Executions" }
    sql_rows     = { opal = "filter metric = \"oracle_top_sql_rows_processed\"\ntimechart options(empty_bins:true), rows:max(value), group_by(sql_id)",     y = "rows",   group = ["sql_id"],  label = "Top SQL Rows",        yLabel = "Rows" }
    sql_latency  = { opal = "filter metric = \"oracle_top_sql_elapsed_per_exec_ms\"\ntimechart options(empty_bins:true), ms:avg(value), group_by(sql_id)",  y = "ms",     group = ["sql_id"],  label = "Top SQL Latency",     yLabel = "ms/exec" }
    enqueue    = { opal = "filter metric = \"oracle_enqueue_lock_count\"\ntimechart options(empty_bins:true), locks:sum(value), group_by(instance, session_type)",             y = "locks",  group = ["instance", "session_type"], label = "Enqueue Locks",        yLabel = "Locks" }
    wc_time    = { opal = "filter metric = \"oracle_wait_class_time_seconds\"\ntimechart options(empty_bins:true), sec:sum(value), group_by(instance, wait_class)",  y = "sec",   group = ["instance", "wait_class"],  label = "Wait Class Time",     yLabel = "Seconds" }
    avg_wait   = { opal = "filter metric = \"oracle_wait_event_avg_wait_ms\"\ntimechart options(empty_bins:true), ms:avg(value), group_by(instance, event)",         y = "ms",    group = ["instance", "event"],       label = "Avg Wait by Event",   yLabel = "Milliseconds" }
  }

  # ===========================================================================
  # Layout generators (full format matching working sample.tf)
  # ===========================================================================
  _sv_layout = { for k, m in local._sv_metrics : k => {
    cardLinks          = []
    dataLinks          = []
    dataTableViewState = local._dtv
    disableOutput      = false
    index              = 0
    inputList = [{
      datasetId   = observe_dataset.oracle_rac_all.id
      id          = "query-input-${k}"
      inputName   = "Oracle RAC Metrics"
      inputRole   = "Data"
      isUserInput = false
    }]
    isInternal = false
    label      = m.label
    managers = [{
      id         = k
      isDisabled = false
      type       = "Vis"
      vis = {
        type = "singlevalue"
        config = {
          color           = "Default"
          colorConfigType = "Color"
          fieldConfig     = { unit = null, visible = false }
          thresholds      = null
          type            = "singlefield"
        }
        source = {
          type = "table"
          table = {
            field         = m.field
            statsBy       = { fn = "avg" }
            timechart     = { fn = "avg", fnArgs = null, resolution = "AUTO" }
            transformType = "none"
            type          = "singlefield"
          }
        }
      }
    }]
    queryPresentation = {
      initialRollupFilter = { mode = "Last" }
      limit               = 1000
      linkify             = true
      loadEverything      = false
      progressive         = true
      resultKinds         = local._rk
      rollup              = {}
      wantBuckets         = 150
    }
    renderType   = "TABLE"
    serializable = true
    steps = [
      { customName = "Input", customSummary = "Oracle RAC Metrics", id = "step-in-${k}", index = 0, isPinned = false, opal = [], type = "InputStep" },
      { customSummary = "", id = "step-op-${k}", index = 1, isPinned = false, opal = split("\n", m.opal), type = "unknown" },
    ]
    type      = "table"
    viewModel = local._vm
  }}

  _bar_layout = { for k, m in local._bar_metrics : k => {
    cardLinks          = []
    dataLinks          = []
    dataTableViewState = local._dtv
    disableOutput      = false
    index              = 0
    inputList = [{
      datasetId   = observe_dataset.oracle_rac_all.id
      id          = "query-input-${k}"
      inputName   = "Oracle RAC Metrics"
      inputRole   = "Data"
      isUserInput = false
    }]
    isInternal = false
    label      = m.label
    managers = [{
      id         = k
      isDisabled = false
      type       = "Vis"
      vis = {
        type = "bar"
        config = {
          type                = "bar"
          areaFillType        = "SolidFill"
          legend              = { type = "list", visible = true }
          thresholds          = { startingColor = "Default", thresholds = [], visible = false }
          xAxisLabelPlacement = "horizontal"
          xConfig             = { axisLabel = "", visible = true }
          yConfig             = { axisLabel = m.yLabel, visible = true }
        }
        source = {
          type = "table"
          table = {
            statsBy       = { fn = "avg" }
            timechart     = { fn = "avg", fnArgs = null, resolution = "AUTO" }
            transformType = "none"
            type          = "xy"
            x             = m.x
            y             = m.y
          }
        }
      }
    }]
    queryPresentation = {
      initialRollupFilter = { mode = "Last" }
      limit               = 1000
      linkify             = true
      loadEverything      = false
      progressive         = true
      resultKinds         = local._rk
      rollup              = {}
      wantBuckets         = 150
    }
    renderType   = "TABLE"
    serializable = true
    steps = [
      { customName = "Input", customSummary = "Oracle RAC Metrics", id = "step-in-${k}", index = 0, isPinned = false, opal = [], type = "InputStep" },
      { customSummary = "", id = "step-op-${k}", index = 1, isPinned = false, opal = split("\n", m.opal), type = "unknown" },
    ]
    type      = "table"
    viewModel = local._vm
  }}

  _ts_layout = { for k, m in local._ts_metrics : k => {
    cardLinks          = []
    dataLinks          = []
    dataTableViewState = local._dtv
    disableOutput      = false
    index              = 0
    inputList = [{
      datasetId   = observe_dataset.oracle_rac_all.id
      id          = "query-input-${k}"
      inputName   = "Oracle RAC Metrics"
      inputRole   = "Data"
      isUserInput = false
    }]
    isInternal = false
    label      = m.label
    managers = [{
      id         = k
      isDisabled = false
      type       = "Vis"
      vis = {
        type = "timeseries"
        config = {
          type          = "xy"
          color         = "Default"
          hideGridLines = false
          legend        = { type = "list", visible = true, placement = "bottom" }
          thresholds    = { startingColor = "Default", thresholds = [], visible = false }
          xConfig       = { axisLabel = "", visible = true }
          yConfig       = { axisLabel = m.yLabel, visible = true }
        }
        source = {
          type = "table"
          table = {
            statsBy       = { fn = "avg" }
            timechart     = { fn = "avg", fnArgs = null, resolution = "AUTO" }
            transformType = "none"
            type          = "xy"
            x             = "_c_valid_from"
            y             = m.y
          }
          topK = { k = 100, order = "Top", type = "Auto" }
        }
      }
    }]
    queryPresentation = {
      initialRollupFilter = { mode = "Last" }
      limit               = 1000
      linkify             = true
      loadEverything      = false
      progressive         = true
      resultKinds         = local._rk
      rollup              = {}
      wantBuckets         = 150
    }
    renderType   = "TABLE"
    serializable = true
    steps = [
      { customName = "Input", customSummary = "Oracle RAC Metrics", id = "step-in-${k}", index = 0, isPinned = false, opal = [], type = "InputStep" },
      { customSummary = "", id = "step-op-${k}", index = 1, isPinned = false, opal = split("\n", m.opal), type = "unknown" },
    ]
    type      = "table"
    viewModel = local._vm
  }}

  # ===========================================================================
  # Table card metrics (SQL text lookup)
  # ===========================================================================
  _tbl_metrics = {
    sql_text = {
      opal  = "filter metric = \"oracle_sql_text_info\"\naggregate sql_text:any(sql_text), group_by(sql_id, instance, db_name)"
      label = "SQL Text Lookup"
      cols  = ["sql_id", "instance", "db_name", "sql_text"]
    }
  }

  _tbl_layout = { for k, m in local._tbl_metrics : k => {
    cardLinks          = []
    dataLinks          = []
    dataTableViewState = {
      autoExpandColumnWidth       = true
      cellValuePresentation       = []
      columnOrderOverride         = []
      columnVisibility            = []
      columnWidths                = [{ columnName = "sql_text", width = 500 }]
      defaultColumnWidth          = 120
      disableFixedLeftColumns     = false
      minColumnWidth              = 60
      preserveCellAndRowSelection = true
      rowHeights                  = []
      selection = {
        cells                = {}
        columnSelectSequence = []
        columns              = {}
        highlightState       = {}
        rows                 = {}
        selectionType        = "table"
      }
      tableWidth = 0
      viewType   = "Auto"
    }
    disableOutput = false
    index         = 0
    inputList = [{
      datasetId   = observe_dataset.oracle_rac_all.id
      id          = "query-input-${k}"
      inputName   = "Oracle RAC Metrics"
      inputRole   = "Data"
      isUserInput = false
    }]
    isInternal = false
    label      = m.label
    managers   = []
    queryPresentation = {
      initialRollupFilter = { mode = "Last" }
      limit               = 1000
      linkify             = true
      loadEverything      = false
      progressive         = true
      resultKinds         = local._rk
      rollup              = {}
      wantBuckets         = 150
    }
    renderType   = "TABLE"
    serializable = true
    steps = [
      { customName = "Input", customSummary = "Oracle RAC Metrics", id = "step-in-${k}", index = 0, isPinned = false, opal = [], type = "InputStep" },
      { customSummary = "", id = "step-op-${k}", index = 1, isPinned = false, opal = split("\n", m.opal), type = "unknown" },
    ]
    type      = "table"
    viewModel = merge(local._vm, { stageTab = "table" })
  }}

  # Merged maps
  _layout = merge(local._sv_layout, local._bar_layout, local._ts_layout, local._tbl_layout)
  _opal = merge(
    { for k, m in local._sv_metrics  : k => m.opal },
    { for k, m in local._bar_metrics : k => m.opal },
    { for k, m in local._ts_metrics  : k => m.opal },
    { for k, m in local._tbl_metrics : k => m.opal }
  )
  _stage = { for k in keys(local._layout) : k => {
    id       = "stage-${replace(k, "_", "-")}"
    input    = [local.ds]
    params   = null
    layout   = local._layout[k]
    pipeline = local._opal[k]
  }}
}

# =============================================================================
# Dashboard 1 — Oracle RAC Overview
# =============================================================================
resource "observe_dashboard" "oracle_rac_overview" {
  workspace = data.observe_workspace.default.oid
  name      = "${var.name_prefix} — Overview"
  icon_url  = "dashboard"

  stages = jsonencode([
    local._stage["inst_up"],
    local._stage["uptime"],
    local._stage["proc_cnt"],
    local._stage["sessions"],
    local._stage["cache_hit"],
    local._stage["sga"],
    local._stage["pga"],
    local._stage["sysstat"],
    local._stage["tbs_used"],
  ])

  layout = jsonencode({
    autoPack = true
    gridLayout = {
      sections = [
        {
          card = { cardType = "section", closed = false, title = "Instance Health" }
          items = [
            { card = { cardType = "stage", stageId = "stage-inst-up" },  layout = { h = 5,  w = 4,  x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-uptime" },   layout = { h = 5,  w = 4,  x = 4, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-proc-cnt" }, layout = { h = 5,  w = 4,  x = 8, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-sessions" }, layout = { h = 10, w = 12, x = 0, y = 5 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "Memory & Cache" }
          items = [
            { card = { cardType = "stage", stageId = "stage-cache-hit" }, layout = { h = 10, w = 12, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-sga" },      layout = { h = 10, w = 6,  x = 0, y = 10 } },
            { card = { cardType = "stage", stageId = "stage-pga" },      layout = { h = 10, w = 6,  x = 6, y = 10 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "System Activity" }
          items = [
            { card = { cardType = "stage", stageId = "stage-sysstat" },  layout = { h = 10, w = 6, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-tbs-used" }, layout = { h = 10, w = 6, x = 6, y = 0 } },
          ]
        },
      ]
    }
  })
}

# =============================================================================
# Dashboard 2 — Oracle RAC SQL Performance
# =============================================================================
resource "observe_dashboard" "oracle_rac_sql" {
  workspace = data.observe_workspace.default.oid
  name      = "${var.name_prefix} — SQL Performance"
  icon_url  = "sql"

  stages = jsonencode([
    local._stage["sql_elapsed"],
    local._stage["sql_cpu"],
    local._stage["sql_bufgets"],
    local._stage["sql_diskreads"],
    local._stage["sql_execs"],
    local._stage["sql_rows"],
    local._stage["sql_latency"],
    local._stage["sql_text"],
    local._stage["ash"],
    local._stage["long_sql"],
  ])

  layout = jsonencode({
    autoPack = true
    gridLayout = {
      sections = [
        {
          card = { cardType = "section", closed = false, title = "Top SQL — Timeseries" }
          items = [
            { card = { cardType = "stage", stageId = "stage-sql-elapsed" },   layout = { h = 10, w = 6, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-sql-cpu" },       layout = { h = 10, w = 6, x = 6, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-sql-bufgets" },   layout = { h = 10, w = 6, x = 0, y = 10 } },
            { card = { cardType = "stage", stageId = "stage-sql-diskreads" }, layout = { h = 10, w = 6, x = 6, y = 10 } },
            { card = { cardType = "stage", stageId = "stage-sql-execs" },     layout = { h = 10, w = 4, x = 0, y = 20 } },
            { card = { cardType = "stage", stageId = "stage-sql-rows" },      layout = { h = 10, w = 4, x = 4, y = 20 } },
            { card = { cardType = "stage", stageId = "stage-sql-latency" },   layout = { h = 10, w = 4, x = 8, y = 20 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "SQL Text Reference" }
          items = [
            { card = { cardType = "stage", stageId = "stage-sql-text" }, layout = { h = 12, w = 12, x = 0, y = 0 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "Active Sessions" }
          items = [
            { card = { cardType = "stage", stageId = "stage-long-sql" }, layout = { h = 5,  w = 12, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-ash" },     layout = { h = 10, w = 12, x = 0, y = 5 } },
          ]
        },
      ]
    }
  })
}

# =============================================================================
# Dashboard 3 — Oracle RAC Wait Events & I/O
# =============================================================================
resource "observe_dashboard" "oracle_rac_waits_io" {
  workspace = data.observe_workspace.default.oid
  name      = "${var.name_prefix} — Wait Events & IO"
  icon_url  = "hourglass"

  stages = jsonencode([
    local._stage["wc_time"],
    local._stage["wc_waits"],
    local._stage["top_events"],
    local._stage["avg_wait"],
    local._stage["ts_reads"],
    local._stage["ts_writes"],
    local._stage["redo"],
    local._stage["dg_lag"],
    local._stage["blocked"],
    local._stage["enqueue"],
  ])

  layout = jsonencode({
    autoPack = true
    gridLayout = {
      sections = [
        {
          card = { cardType = "section", closed = false, title = "Wait Events" }
          items = [
            { card = { cardType = "stage", stageId = "stage-wc-time" },    layout = { h = 10, w = 6, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-wc-waits" },   layout = { h = 10, w = 6, x = 6, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-top-events" }, layout = { h = 10, w = 6, x = 0, y = 10 } },
            { card = { cardType = "stage", stageId = "stage-avg-wait" },   layout = { h = 10, w = 6, x = 6, y = 10 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "Storage I/O" }
          items = [
            { card = { cardType = "stage", stageId = "stage-ts-reads" },  layout = { h = 10, w = 6, x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-ts-writes" }, layout = { h = 10, w = 6, x = 6, y = 0 } },
          ]
        },
        {
          card = { cardType = "section", closed = false, title = "Key Indicators" }
          items = [
            { card = { cardType = "stage", stageId = "stage-redo" },    layout = { h = 5,  w = 4,  x = 0, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-dg-lag" },  layout = { h = 5,  w = 4,  x = 4, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-blocked" }, layout = { h = 5,  w = 4,  x = 8, y = 0 } },
            { card = { cardType = "stage", stageId = "stage-enqueue" }, layout = { h = 10, w = 12, x = 0, y = 5 } },
          ]
        },
      ]
    }
  })
}
