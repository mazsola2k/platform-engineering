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
    sessions     = { opal = "filter metric = \"oracle_session_count\"\naggregate count:sum(value), group_by(status)",              x = "status",     y = "count",    label = "Sessions by Status" }
    sga          = { opal = "filter metric = \"oracle_sga_bytes\"\naggregate bytes:avg(value), group_by(name)",                    x = "name",       y = "bytes",    label = "SGA Memory" }
    tbs_used     = { opal = "filter metric = \"oracle_tablespace_used_pct\"\naggregate pct:last(value), group_by(tablespace)",     x = "tablespace", y = "pct",      label = "Tablespace Usage %" }
    sql_elapsed  = { opal = "filter metric = \"oracle_top_sql_elapsed_seconds\"\naggregate sec:max(value), group_by(sql_id)",      x = "sql_id",     y = "sec",      label = "Top SQL Elapsed" }
    sql_cpu      = { opal = "filter metric = \"oracle_top_sql_cpu_seconds\"\naggregate sec:max(value), group_by(sql_id)",          x = "sql_id",     y = "sec",      label = "Top SQL CPU" }
    sql_bufgets  = { opal = "filter metric = \"oracle_top_sql_buffer_gets\"\naggregate gets:max(value), group_by(sql_id)",         x = "sql_id",     y = "gets",     label = "Top SQL Buffer Gets" }
    sql_diskreads= { opal = "filter metric = \"oracle_top_sql_disk_reads\"\naggregate reads:max(value), group_by(sql_id)",         x = "sql_id",     y = "reads",    label = "Top SQL Disk Reads" }
    sql_execs    = { opal = "filter metric = \"oracle_top_sql_executions\"\naggregate execs:max(value), group_by(sql_id)",         x = "sql_id",     y = "execs",    label = "Top SQL Executions" }
    sql_rows     = { opal = "filter metric = \"oracle_top_sql_rows_processed\"\naggregate rows:max(value), group_by(sql_id)",      x = "sql_id",     y = "rows",     label = "Top SQL Rows" }
    sql_latency  = { opal = "filter metric = \"oracle_top_sql_elapsed_per_exec_ms\"\naggregate ms:avg(value), group_by(sql_id)",   x = "sql_id",     y = "ms",       label = "Top SQL Latency" }
    ash          = { opal = "filter metric = \"oracle_ash_active_sessions\"\naggregate sessions:sum(value), group_by(wait_class)", x = "wait_class", y = "sessions", label = "ASH by Wait Class" }
    wc_time      = { opal = "filter metric = \"oracle_wait_class_time_seconds\"\naggregate sec:sum(value), group_by(wait_class)",  x = "wait_class", y = "sec",      label = "Wait Class Time" }
    avg_wait     = { opal = "filter metric = \"oracle_wait_event_avg_wait_ms\"\naggregate ms:avg(value), group_by(event)",         x = "event",      y = "ms",       label = "Avg Wait by Event" }
  }

  # ===========================================================================
  # Timeseries metrics
  # ===========================================================================
  _ts_metrics = {
    cache_hit  = { opal = "filter metric = \"oracle_buffer_cache_hit_ratio\"\ntimechart options(empty_bins:true), ratio:avg(value)",                            y = "ratio",  group = [],              label = "Cache Hit Ratio" }
    pga        = { opal = "filter metric = \"oracle_pga_stat\"\ntimechart options(empty_bins:true), val:avg(value), group_by(name)",                            y = "val",    group = ["name"],        label = "PGA Statistics" }
    sysstat    = { opal = "filter metric = \"oracle_sysstat\"\ntimechart options(empty_bins:true), val:rate(value), group_by(name)",                            y = "val",    group = ["name"],        label = "System Statistics" }
    wc_waits   = { opal = "filter metric = \"oracle_wait_class_total_waits\"\ntimechart options(empty_bins:true), waits:rate(value), group_by(wait_class)",     y = "waits",  group = ["wait_class"],  label = "Wait Class Waits" }
    top_events = { opal = "filter metric = \"oracle_wait_event_time_seconds\"\ntimechart options(empty_bins:true), sec:rate(value), group_by(event)",           y = "sec",    group = ["event"],       label = "Top Wait Events" }
    ts_reads   = { opal = "filter metric = \"oracle_tablespace_physical_reads\"\ntimechart options(empty_bins:true), reads:rate(value), group_by(tablespace)",  y = "reads",  group = ["tablespace"],  label = "Tablespace Reads" }
    ts_writes  = { opal = "filter metric = \"oracle_tablespace_physical_writes\"\ntimechart options(empty_bins:true), writes:rate(value), group_by(tablespace)",y = "writes", group = ["tablespace"],  label = "Tablespace Writes" }
    enqueue    = { opal = "filter metric = \"oracle_enqueue_lock_count\"\ntimechart options(empty_bins:true), locks:sum(value), group_by(type)",                y = "locks",  group = ["type"],        label = "Enqueue Locks" }
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
          xConfig             = { visible = true }
          yConfig             = { visible = true }
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
          xConfig       = { visible = true }
          yConfig       = { visible = true }
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

  # Merged maps
  _layout = merge(local._sv_layout, local._bar_layout, local._ts_layout)
  _opal = merge(
    { for k, m in local._sv_metrics  : k => m.opal },
    { for k, m in local._bar_metrics : k => m.opal },
    { for k, m in local._ts_metrics  : k => m.opal }
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
    local._stage["ash"],
    local._stage["long_sql"],
  ])

  layout = jsonencode({
    autoPack = true
    gridLayout = {
      sections = [
        {
          card = { cardType = "section", closed = false, title = "Top SQL" }
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
