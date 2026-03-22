# terraform import observe_dashboard.license_dashboard 42963046
resource "observe_dashboard" "license_dashboard" {
    entity_tags = {}
    layout      = jsonencode(
        {
            autoPack        = true
            gridLayout      = {
                sections = [
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "Content"
                        }
                        items = []
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "Ingest Utilization"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-5es4r61g"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 8
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-9ezj6o2e"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-tiw6hwfd"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 4
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-q983o36v"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 0
                                    y = 16
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-jhx9903f"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 4
                                    y = 16
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-ae1xtxok"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 8
                                    y = 16
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-5taq9nts"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 0
                                    y = 32
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-sjlkdiyu"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 4
                                    y = 32
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-ucg0jouk"
                                }
                                layout = {
                                    h = 16
                                    w = 4
                                    x = 8
                                    y = 32
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "Query Compute"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-sjdrch0o"
                                }
                                layout = {
                                    h = 17
                                    w = 3
                                    x = 9
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-i9zs4so5"
                                }
                                layout = {
                                    h = 17
                                    w = 9
                                    x = 0
                                    y = 0
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "Acceleration Compute"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-so1pcn9r"
                                }
                                layout = {
                                    h = 17
                                    w = 9
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-8rqiy5rx"
                                }
                                layout = {
                                    h = 17
                                    w = 3
                                    x = 9
                                    y = 0
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "Compute Utilization by type"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-otcw3h16"
                                }
                                layout = {
                                    h = 14
                                    w = 8
                                    x = 4
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-oirk99uv"
                                }
                                layout = {
                                    h = 14
                                    w = 4
                                    x = 0
                                    y = 0
                                }
                            },
                        ]
                    },
                ]
            }
            stageListLayout = {
                isModified      = false
                selectedStageId = "stage-ucg0jouk"
                timeRange       = {
                    display               = "Past 7 days"
                    endTime               = null
                    millisFromCurrentTime = 604800000
                    originalDisplay       = "Past 7 days"
                    startTime             = null
                    timeRangeInfo         = {
                        key        = "PRESETS"
                        name       = "Presets"
                        presetType = "PAST_7_DAYS"
                    }
                }
            }
        }
    )
    name        = "License Dashboard"
    stages      = jsonencode(
        [
            {
                id       = "stage-k1uzkcui"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
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
                        selection                   = {
                            cells                = {
                                hour = {
                                    "5" = true
                                }
                            }
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "cell"
                        }
                        tableWidth                  = 767
                        viewType                    = "Compact"
                    }
                    disableOutput      = true
                    index              = 0
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-o0hfipgn"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Observe Usage Metrics Primary Dataset"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 1000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-6akom2t3"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-a0ndkdpi"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", kind=\"backfill\", \"acceleration - on demand\", contains(kind, \"query\"), \"query\", true, kind)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", kind="backfill", "acceleration - on demand", contains(kind, "query"), "query", true, kind)
                EOT
            },
            {
                id       = "stage-otcw3h16"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = []
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 1
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-sgmjc2kv"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Daily Compute Unit Usage by Kind"
                    managers           = [
                        {
                            id         = "0hrqiymk"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        type    = "list"
                                        visible = true
                                    }
                                    thresholds          = {
                                        startingColor = "Default"
                                        thresholds    = []
                                        visible       = false
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Compute Units"
                                        unit      = ""
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A__ob_value_avg"
                                    }
                                    type  = "table"
                                }
                                type   = "bar"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 30
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-2p26e19v"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-ucppzzgo"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", kind=\"backfill\", \"acceleration - on demand\", kind=\"transform_livemode\", \"acceleration - live mode\",",
                                "    contains(kind, \"query\"), \"query\", true, kind)",
                                "filter contains(metric, \"credits\")",
                                "timechart options(empty_bins:true), duration_hr(24), _ob_value:sum(value), group_by(kind)",
                            ]
                            type          = "unknown"
                        },
                        {
                            action        = {
                                params  = {
                                    expressionList = {
                                        aggregationMode       = "aggregate"
                                        expressions           = [
                                            {
                                                autoResolution       = false
                                                dataVis              = {
                                                    config = {
                                                        areaFillType        = "SolidFill"
                                                        legend              = {
                                                            placement        = "right"
                                                            showNullAsOption = "Custom"
                                                            showNullAsString = "Other"
                                                            type             = "list"
                                                            visible          = true
                                                        }
                                                        thresholds          = {
                                                            defaultColor  = "Default"
                                                            drawType      = "Lines"
                                                            mode          = "Value"
                                                            startingColor = "Green"
                                                            thresholds    = [
                                                                {
                                                                    exceedsColor = "Red"
                                                                    id           = "threshold-u3x23x1k"
                                                                    value        = 10
                                                                },
                                                            ]
                                                            visible       = false
                                                        }
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Compute Units"
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            statsBy       = {
                                                                fn = "avg"
                                                            }
                                                            timechart     = {
                                                                fn         = "avg"
                                                                fnArgs     = null
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A__ob_value_avg"
                                                        }
                                                        topK  = {
                                                            order = "Top"
                                                            type  = "Auto"
                                                        }
                                                        type  = "table"
                                                    }
                                                    type   = "bar"
                                                }
                                                expressionIdentifier = "A"
                                                field                = "_ob_value"
                                                filterActions        = []
                                                groupBy              = [
                                                    "kind",
                                                ]
                                                id                   = "datasetQueryExpression-mwsds5al"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "avg"
                                                summaryFunctionArgs  = null
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A__ob_value_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-cvl8us3g"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-mwsds5al",
                                        ]
                                        shouldLimitPatterns   = true
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary = "Expression Builder"
                            id            = "step-u9mx5ihm"
                            index         = 2
                            isPinned      = false
                            opal          = [
                                "timechart options(empty_bins:true), 1d, A__ob_value_avg:avg(_ob_value), group_by(kind)",
                            ]
                            type          = "unknown"
                        },
                        {
                            customSummary = ""
                            id            = "step-5hyp4d06"
                            index         = 3
                            isPinned      = false
                            opal          = [
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "Builder"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", kind="backfill", "acceleration - on demand", kind="transform_livemode", "acceleration - live mode",
                        contains(kind, "query"), "query", true, kind)
                    filter contains(metric, "credits")
                    timechart options(empty_bins:true), duration_hr(24), _ob_value:sum(value), group_by(kind)
                    timechart options(empty_bins:true), 1d, A__ob_value_avg:avg(_ob_value), group_by(kind)
                EOT
            },
            {
                id       = "stage-oirk99uv"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "kind",
                            ],
                            [
                                1,
                                "% of total",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "% of total",
                                160,
                            ],
                            [
                                "compute_units",
                                194,
                            ],
                            [
                                "credits",
                                121,
                            ],
                            [
                                "kind",
                                238,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = [
                                "kind",
                            ]
                            columns              = {
                                kind = true
                            }
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "column"
                        }
                        tableWidth                  = 767
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 2
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-ur4wp8yq"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Compute Unit Usage by Kind"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        rollup              = {}
                        sort                = [
                            {
                                ascending  = false
                                columnName = "credits"
                            },
                        ]
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-8hisnoi0"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-ypkzdh0o"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", kind=\"backfill\", \"acceleration - on demand\", contains(kind, \"query\"), \"query\", kind=\"transform_livemode\", \"acceleration - live mode\", true, kind)",
                                "filter contains(metric, \"credits\")",
                                "statsby credits:round(sum(value), 2), group_by(kind)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col compute_units:credits, kind, @.\"% of total\"",
                            ]
                            type          = "unknown"
                        },
                        {
                            action        = {
                                params  = {
                                    columns = [
                                        {
                                            asc = false
                                            id  = "compute_units"
                                        },
                                    ]
                                }
                                summary = null
                                type    = "SortDescending"
                            }
                            customSummary = ""
                            id            = "step-55b88jcc"
                            index         = 2
                            isPinned      = false
                            opal          = [
                                "sort desc(compute_units)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", kind="backfill", "acceleration - on demand", contains(kind, "query"), "query", kind="transform_livemode", "acceleration - live mode", true, kind)
                    filter contains(metric, "credits")
                    statsby credits:round(sum(value), 2), group_by(kind)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col compute_units:credits, kind, @."% of total"
                    sort desc(compute_units)
                EOT
            },
            {
                id       = "stage-src44641"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2197
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 3
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-p6w9tj2b"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-hkcm09lb"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "make_col",
                                "    query_credits_per_day:window(last_not_null(int64(FIELDS.query_credits))),",
                                "    transform_credits_per_day:window(last_not_null(int64(FIELDS.transform_credits))),",
                                "    ingest_spanGib_limit_per_day: window(last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024)),",
                                "    ingest_logGib_limit_per_day:window(last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024)),",
                                "    ingest_metricDpm_limit_per_day:window(last_not_null(int64(FIELDS.ingest_metric_dpm))),",
                                "    ingest_totalGib_limit_per_day:window(last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024))",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "drop_col ",
                                "    query_credits_per_day,",
                                "    transform_credits_per_day",
                                "pick_col",
                                "    BUNDLE_TIMESTAMP,",
                                "    compute_credit_limit_per_day, ",
                                "    ingest_totalGib_limit_per_day,",
                                "    ingest_metricDpm_limit_per_day,",
                                "    ingest_logGib_limit_per_day,",
                                "    ingest_spanGib_limit_per_day",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    make_col
                        query_credits_per_day:window(last_not_null(int64(FIELDS.query_credits))),
                        transform_credits_per_day:window(last_not_null(int64(FIELDS.transform_credits))),
                        ingest_spanGib_limit_per_day: window(last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024)),
                        ingest_logGib_limit_per_day:window(last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024)),
                        ingest_metricDpm_limit_per_day:window(last_not_null(int64(FIELDS.ingest_metric_dpm))),
                        ingest_totalGib_limit_per_day:window(last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024))
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    drop_col 
                        query_credits_per_day,
                        transform_credits_per_day
                    pick_col
                        BUNDLE_TIMESTAMP,
                        compute_credit_limit_per_day, 
                        ingest_totalGib_limit_per_day,
                        ingest_metricDpm_limit_per_day,
                        ingest_logGib_limit_per_day,
                        ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-7k4p2sb9"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "User",
                                123,
                            ],
                            [
                                "_c_valid_from",
                                215,
                            ],
                            [
                                "_c_valid_to",
                                266,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                273,
                            ],
                            [
                                "compute_limit",
                                222,
                            ],
                            [
                                "credit_limit_per_hour",
                                268,
                            ],
                            [
                                "credit_pct",
                                298,
                            ],
                            [
                                "credits",
                                418,
                            ],
                            [
                                "credits_consumed_per_1h",
                                244,
                            ],
                            [
                                "credits_consumed_per_24h",
                                262,
                            ],
                            [
                                "legend",
                                413,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 4
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-xtky876a"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-8sb6vdf6"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = "Total Utilization % (Last Hour)"
                    managers           = [
                        {
                            id         = "3xfw072o"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Color"
                                    fieldConfig     = {
                                        unit    = "percent (0-100)"
                                        visible = false
                                    }
                                    thresholds      = null
                                    type            = "singlefield"
                                }
                                source = {
                                    table = {
                                        field         = "credit_pct"
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "singlefield"
                                    }
                                    type  = "table"
                                }
                                type   = "singlevalue"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-yvzolkbt"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-aob45oms"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter starts_with(metric, \"credits_\") OR starts_with(metric, \"xfrm_\")",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()",
                                "}",
                                "leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day",
                                "make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()",
                                "  make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0",
                                "  make_col legend: \"% of daily limit used in the last 7d\"",
                                "}",
                                "",
                                "<- @weekly {   ",
                                "  timestats credit_pct: any(credit_pct), group_by(legend)",
                                "  filter _c_valid_to < query_end_time()",
                                "}",
                                "",
                                " ",
                                "",
                                "",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter starts_with(metric, "credits_") OR starts_with(metric, "xfrm_")
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()
                    }
                    leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day
                    make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()
                      make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0
                      make_col legend: "% of daily limit used in the last 7d"
                    }
                                        
                    <- @weekly {   
                      timestats credit_pct: any(credit_pct), group_by(legend)
                      filter _c_valid_to < query_end_time()
                    }
                EOT
            },
            {
                id       = "stage-3rcjrvm5"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)_-src4"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "_c_valid_from",
                                195,
                            ],
                            [
                                "_c_valid_to",
                                257,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 5
                    inputList          = [
                        {
                            id          = "query-input-2ju2y07b"
                            inputName   = "Credit Limits Raw (Last Set)_-src4"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = ""
                    managers           = [
                        {
                            id         = "mslmf7im"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Purple"
                                    colorConfigType = "Color"
                                    fieldConfig     = {
                                        unit    = ""
                                        visible = false
                                    }
                                    singleStatLabel = "Compute Unit Limit (Daily)"
                                    thresholds      = null
                                    type            = "singlefield"
                                }
                                source = {
                                    table = {
                                        field         = "compute_credit_limit_per_day"
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "singlefield"
                                    }
                                    type  = "table"
                                }
                                type   = "singlevalue"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Credit Limits Raw (Last Set)_-src4"
                            id            = "step-1chrz5dr"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-707ua503"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "Builder"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = "timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()"
            },
            {
                id       = "stage-i2io8d6p"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 6
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-l3ih1nox"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = "Total Ingest vs. Daily Limit"
                    managers           = [
                        {
                            id         = "njcycb01"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Red"
                                            key   = "total_GB_ingestLimit_per_day"
                                        },
                                        {
                                            color = "#3330d2"
                                            key   = "total_GB_consumed_per_day"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        placement = "bottom"
                                        type      = "list"
                                        visible   = true
                                    }
                                    thresholds      = {
                                        startingColor = "Default"
                                        thresholds    = []
                                        visible       = false
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        axisLabel = "per day"
                                        unit      = "gigabytes"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "uncompressed_Gb"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-36x7y6xi"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-4k8j78eh"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()",
                                "",
                                "@daily <- @ {",
                                "  make_col legend: \"Consumed\"",
                                "}",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_totalGib_limit_per_day), group_by()",
                                "  make_col legend: \"Ingest Limit\"",
                                "}",
                                "",
                                "<- @daily{",
                                "    union @limits",
                                "    timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)",
                                "",
                                "}",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()
                                        
                    @daily <- @ {
                      make_col legend: "Consumed"
                    }
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_totalGib_limit_per_day), group_by()
                      make_col legend: "Ingest Limit"
                    }
                                        
                    <- @daily{
                        union @limits
                        timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)
                                        
                    }
                EOT
            },
            {
                id       = "stage-aihk5unr"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
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
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 7
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-jd8yac5k"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Daily Ingest by Type"
                    managers           = [
                        {
                            id         = "jateyjtv"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    colorMapping        = [
                                        {
                                            color = "Green"
                                            key   = "logs"
                                        },
                                        {
                                            color = "Yellow"
                                            key   = "spans"
                                        },
                                        {
                                            color = "Purple"
                                            key   = "metrics"
                                        },
                                    ]
                                    legend              = {
                                        type    = "list"
                                        visible = true
                                    }
                                    thresholds          = {
                                        startingColor = "Default"
                                        thresholds    = []
                                        visible       = false
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        unit    = "gigabytes"
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_uncompressed_bytes_sum"
                                    }
                                    topK  = {
                                        k     = 100
                                        order = "Top"
                                        type  = "Auto"
                                    }
                                    type  = "table"
                                }
                                type   = "bar"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 50
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-sxp1d2uq"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-4zya6v2v"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "timechart options(), 24h, A_uncompressed_bytes_sum:sum(uncompressed_bytes/1024/1024/1024), group_by(category)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = "timechart options(), 24h, A_uncompressed_bytes_sum:sum(uncompressed_bytes/1024/1024/1024), group_by(category)"
            },
            {
                id       = "stage-9ezj6o2e"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 8
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-l3ih1nox"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = "Logs Ingest vs. Daily Limit"
                    managers           = [
                        {
                            id         = "vcoydcbg"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Red"
                                            key   = "Ingest Limit"
                                        },
                                        {
                                            color = "#56c970"
                                            key   = "Consumed"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        placement = "bottom"
                                        type      = "list"
                                        visible   = true
                                    }
                                    thresholds      = {
                                        startingColor = "Default"
                                        thresholds    = []
                                        visible       = false
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        axisLabel = ""
                                        bounds    = {
                                            start = 0
                                        }
                                        unit      = "gibibytes"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "uncompressed_Gb"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 150
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-ho1loj1t"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-of8rlalr"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"logs\"",
                                "",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()",
                                "",
                                "@daily <- @ {",
                                "  make_col legend: \"Consumed\"",
                                "}",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_logGib_limit_per_day), group_by()",
                                "  make_col legend: \"Ingest Limit\"",
                                "}",
                                "",
                                "<- @daily{",
                                "    union @limits",
                                "    timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)",
                                "",
                                "}",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="logs"
                                        
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()
                                        
                    @daily <- @ {
                      make_col legend: "Consumed"
                    }
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_logGib_limit_per_day), group_by()
                      make_col legend: "Ingest Limit"
                    }
                                        
                    <- @daily{
                        union @limits
                        timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)
                                        
                    }
                EOT
            },
            {
                id       = "stage-q983o36v"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 9
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Logs, Uncompressed Bytes by Path"
                    managers           = [
                        {
                            id         = "gqrzhwal"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                legend     = {
                                    visible = true
                                }
                                lineConfig = {
                                    areaFillType = "TranslucentFill"
                                }
                                type       = "LineChart"
                                x          = "_c_valid_from"
                                xConfig    = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y          = [
                                    "uncompressed_Gb",
                                ]
                                yConfig    = {
                                    show        = true
                                    valueFormat = {
                                        options = {
                                            metricUnit = "gibibytes"
                                            style      = "unit"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-mirhhpvt"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-jtde1j3d"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"logs\"",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(normalized_path)",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 64.31095406360424
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="logs"
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(normalized_path)
                EOT
            },
            {
                id       = "stage-5taq9nts"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 10
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Logs, Uncompressed Bytes by Token (Top 25)"
                    managers           = [
                        {
                            id         = "5yuw193d"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                legend     = {
                                    visible = true
                                }
                                lineConfig = {
                                    areaFillType = "TranslucentFill"
                                }
                                type       = "LineChart"
                                x          = "_c_valid_from"
                                xConfig    = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y          = [
                                    "uncompressed_Gb",
                                ]
                                yConfig    = {
                                    show        = true
                                    valueFormat = {
                                        options = {
                                            metricUnit = "gibibytes"
                                            style      = "unit"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-o7kqpo5s"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-9kty8nc8"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"logs\"",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(^Token...)",
                                "topk 25, max(uncompressed_Gb)",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 58.42167255594818
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="logs"
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(^Token...)
                    topk 25, max(uncompressed_Gb)
                EOT
            },
            {
                id       = "stage-jhx9903f"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 11
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Metrics, DPM by Path"
                    managers           = [
                        {
                            id         = "v6jzewpc"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                colorConfig = {
                                    config = {
                                        colorMapping = [
                                            {
                                                color = ""
                                                key   = ""
                                            },
                                        ]
                                    }
                                }
                                legend      = {
                                    visible = true
                                }
                                lineConfig  = {
                                    areaFillType = "TranslucentFill"
                                }
                                type        = "LineChart"
                                x           = "_c_valid_from"
                                xConfig     = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y           = [
                                    "observations_per_minute",
                                ]
                                yConfig     = {
                                    hideGridLines = false
                                    label         = "DPM "
                                    show          = true
                                    valueFormat   = {
                                        options = {
                                            maximumFractionDigits = 0
                                            minimumFractionDigits = 0
                                            notation              = "compact"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-mg57o2eh"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-cr0fh78n"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"metrics\"",
                                "timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by(normalized_path)",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 64.31095406360424
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="metrics"
                    timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by(normalized_path)
                EOT
            },
            {
                id       = "stage-sjlkdiyu"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 12
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Metrics, DPM by Token (Top 25)"
                    managers           = [
                        {
                            id         = "73h1uuay"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                colorConfig = {
                                    config = {
                                        colorMapping = [
                                            {
                                                color = ""
                                                key   = ""
                                            },
                                        ]
                                    }
                                }
                                legend      = {
                                    visible = true
                                }
                                lineConfig  = {
                                    areaFillType = "TranslucentFill"
                                }
                                type        = "LineChart"
                                x           = "_c_valid_from"
                                xConfig     = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y           = [
                                    "observations_per_minute",
                                ]
                                yConfig     = {
                                    hideGridLines = false
                                    label         = "DPM "
                                    show          = true
                                    valueFormat   = {
                                        options = {
                                            maximumFractionDigits = 0
                                            minimumFractionDigits = 0
                                            notation              = "compact"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-nyflb48x"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-u07dhckm"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"metrics\"",
                                "timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by(^Token...)",
                                "topk 25, max(observations_per_minute)",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 64.31095406360424
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="metrics"
                    timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by(^Token...)
                    topk 25, max(observations_per_minute)
                EOT
            },
            {
                id       = "stage-ae1xtxok"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 13
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Spans, Uncompressed Bytes by Path"
                    managers           = [
                        {
                            id         = "d99gayg2"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                legend     = {
                                    visible = true
                                }
                                lineConfig = {
                                    areaFillType = "TranslucentFill"
                                }
                                type       = "LineChart"
                                x          = "_c_valid_from"
                                xConfig    = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y          = [
                                    "uncompressed_Gb",
                                ]
                                yConfig    = {
                                    show        = true
                                    valueFormat = {
                                        options = {
                                            metricUnit = "gibibytes"
                                            style      = "unit"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-hjmeqfms"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-p1p9kduv"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"spans\"",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(normalized_path)",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 64.31095406360424
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="spans"
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(normalized_path)
                EOT
            },
            {
                id       = "stage-ucg0jouk"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 14
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Spans, Uncompressed Bytes by Token (Top 25)"
                    managers           = [
                        {
                            id         = "f753onfu"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                legend     = {
                                    visible = true
                                }
                                lineConfig = {
                                    areaFillType = "TranslucentFill"
                                }
                                type       = "LineChart"
                                x          = "_c_valid_from"
                                xConfig    = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y          = [
                                    "uncompressed_Gb",
                                ]
                                yConfig    = {
                                    show        = true
                                    valueFormat = {
                                        options = {
                                            metricUnit = "gibibytes"
                                            style      = "unit"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-i4q5gaqf"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-avwdwtp8"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"spans\"",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(^Token...)",
                                "topk 25, max(uncompressed_Gb)",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageOutputHeight    = 64.31095406360424
                        stageTab             = "vis"
                        thumbnailId          = "whmfq27e"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="spans"
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by(^Token...)
                    topk 25, max(uncompressed_Gb)
                EOT
            },
            {
                id       = "stage-tiw6hwfd"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 15
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-l3ih1nox"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = "Metrics Ingest vs. Daily Limit"
                    managers           = [
                        {
                            id         = "jjtqxkr4"
                            isDisabled = false
                            type       = "Vis"
                            vegaVis    = {
                                colorConfig = {
                                    config = {
                                        colorMapping = [
                                            {
                                                color = "Red"
                                                key   = "Ingest Limit"
                                            },
                                        ]
                                    }
                                }
                                legend      = {
                                    visible = true
                                }
                                lineConfig  = {
                                    areaFillType = "TranslucentFill"
                                }
                                type        = "LineChart"
                                x           = "_c_valid_from"
                                xConfig     = {
                                    hideGridLines = true
                                    valueFormat   = {
                                        notation = "compact"
                                    }
                                }
                                y           = [
                                    "observations_per_minute",
                                ]
                                yConfig     = {
                                    hideGridLines = false
                                    label         = "DPM"
                                    show          = true
                                    valueFormat   = {
                                        options = {
                                            notation = "compact"
                                        }
                                    }
                                }
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-4bjbzxv7"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-8px2j4fs"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"metrics\"",
                                "timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by()",
                                "",
                                "@daily <- @ {",
                                "  make_col legend: \"Consumed\"",
                                "}",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 24h, frame(back: 1h, ahead: 2h), observations_per_minute: avg(ingest_metricDpm_limit_per_day), group_by()",
                                "  make_col legend: \"Ingest Limit\"",
                                "}",
                                "",
                                "<- @daily{",
                                "    union @limits",
                                "    timestats observations_per_minute: any(observations_per_minute), group_by(legend)",
                                "",
                                "}",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                        thumbnailId          = "zqofgm7x"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="metrics"
                    timechart 24h, observations_per_minute: sum(num_observations) / 1440 , group_by()
                                        
                    @daily <- @ {
                      make_col legend: "Consumed"
                    }
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 24h, frame(back: 1h, ahead: 2h), observations_per_minute: avg(ingest_metricDpm_limit_per_day), group_by()
                      make_col legend: "Ingest Limit"
                    }
                                        
                    <- @daily{
                        union @limits
                        timestats observations_per_minute: any(observations_per_minute), group_by(legend)
                                        
                    }
                EOT
            },
            {
                id       = "stage-5es4r61g"
                input    = [
                    {
                        datasetId   = "42962959"
                        datasetPath = null
                        inputName   = "usage/License Ingest Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-src44641"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "Gb_consumed_per_1h",
                                256,
                            ],
                            [
                                "Gb_consumed_per_day",
                                263,
                            ],
                            [
                                "bytes_consumed_per_1h",
                                338,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                187,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                291,
                            ],
                            [
                                "legend",
                                284,
                            ],
                            [
                                "uncompressed_Gb",
                                131,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 2198
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 16
                    inputList          = [
                        {
                            datasetId   = "42962959"
                            id          = "query-input-1eq83loz"
                            inputName   = "usage/License Ingest Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-l3ih1nox"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-src44641"
                        },
                    ]
                    isInternal         = false
                    label              = "Spans Ingest vs. Daily Limit"
                    managers           = [
                        {
                            id         = "2ijrvll9"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Yellow"
                                            key   = "Consumed"
                                        },
                                        {
                                            color = "Red"
                                            key   = "Ingest Limit"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        placement = "bottom"
                                        type      = "list"
                                        visible   = true
                                    }
                                    thresholds      = {
                                        startingColor = "Default"
                                        thresholds    = []
                                        visible       = false
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        axisLabel = ""
                                        visible   = true
                                    }
                                    yConfig         = {
                                        axisLabel = ""
                                        bounds    = {
                                            start = 0
                                        }
                                        unit      = "gibibytes"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "uncompressed_Gb"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 150
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/License Ingest Events"
                            id            = "step-qzahuys3"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-4ufwoy5o"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter category=\"spans\"",
                                "",
                                "timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()",
                                "",
                                "@daily <- @ {",
                                "  make_col legend: \"Consumed\"",
                                "}",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_spanGib_limit_per_day), group_by()",
                                "  make_col legend: \"Ingest Limit\"",
                                "}",
                                "",
                                "<- @daily{",
                                "    union @limits",
                                "    timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)",
                                "",
                                "}",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter category="spans"
                                        
                    timechart 24h, uncompressed_Gb: sum(uncompressed_bytes/1024/1024/1024), group_by()
                                        
                    @daily <- @ {
                      make_col legend: "Consumed"
                    }
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 24h, frame(back: 1h, ahead: 2h), uncompressed_Gb: avg(ingest_spanGib_limit_per_day), group_by()
                      make_col legend: "Ingest Limit"
                    }
                                        
                    <- @daily{
                        union @limits
                        timestats uncompressed_Gb: any(uncompressed_Gb), group_by(legend)
                                        
                    }
                EOT
            },
            {
                id       = "stage-cbsevbbb"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-apcfuplb"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "User",
                                123,
                            ],
                            [
                                "_c_valid_from",
                                215,
                            ],
                            [
                                "_c_valid_to",
                                266,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                273,
                            ],
                            [
                                "compute_limit",
                                222,
                            ],
                            [
                                "credit_limit_per_hour",
                                268,
                            ],
                            [
                                "credit_pct",
                                209,
                            ],
                            [
                                "credits",
                                418,
                            ],
                            [
                                "credits_consumed_per_1h",
                                244,
                            ],
                            [
                                "credits_consumed_per_24h",
                                262,
                            ],
                            [
                                "legend",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1998
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 17
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-xtky876a"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-8sb6vdf6"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-apcfuplb"
                        },
                    ]
                    isInternal         = false
                    label              = "Query Compute Usage vs. Daily Limit"
                    managers           = [
                        {
                            id         = "g1movubp"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Blue"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Yellow"
                                            key   = "% of limit used in the last 1h"
                                        },
                                        {
                                            color = "Blue"
                                            key   = "% of limit used in the last 24h"
                                        },
                                        {
                                            color = "Purple"
                                            key   = "% of limit used in the last 7d"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        type    = "list"
                                        visible = true
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Dashed lines"
                                        mode          = "Value"
                                        startingColor = "Green"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-xvrgqqic"
                                                value        = 100
                                            },
                                        ]
                                        visible       = true
                                    }
                                    type            = "xy"
                                    xConfig         = {}
                                    yConfig         = {
                                        unit    = "percent (0-100)"
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "credit_pct"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-f4rwshv0"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-cu6afq1g"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(metric, \"query\") ",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(query_credits_per_day), group_by()",
                                "}",
                                "leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day",
                                "make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0",
                                "",
                                "@hourly <- @ {",
                                "  make_col credit_pct: credits_consumed_per_1h / credit_limit_per_hour * 100.0",
                                "  make_col legend: \"% of limit used in the last 1h\"",
                                "}",
                                "",
                                "@daily <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 24h), credits_consumed_per_24h: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()",
                                "  make_col credit_pct: credits_consumed_per_24h / compute_credit_limit_per_day * 100.0",
                                "  make_col legend: \"% of limit used in the last 24h\"",
                                "}",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()",
                                "  make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0",
                                "  make_col legend: \"% of limit used in the last 7d\"",
                                "}",
                                "",
                                "<- @hourly { ",
                                "  union @daily",
                                "  union @weekly",
                                "  timestats credit_pct: any(credit_pct), group_by(legend)",
                                "}",
                                "",
                                "",
                                "filter _c_valid_to < query_end_time()",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(metric, "query") 
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(query_credits_per_day), group_by()
                    }
                    leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day
                    make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0
                                        
                    @hourly <- @ {
                      make_col credit_pct: credits_consumed_per_1h / credit_limit_per_hour * 100.0
                      make_col legend: "% of limit used in the last 1h"
                    }
                                        
                    @daily <- @ {
                      make_event
                      timechart 1h, frame(back: 24h), credits_consumed_per_24h: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()
                      make_col credit_pct: credits_consumed_per_24h / compute_credit_limit_per_day * 100.0
                      make_col legend: "% of limit used in the last 24h"
                    }
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()
                      make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0
                      make_col legend: "% of limit used in the last 7d"
                    }
                                        
                    <- @hourly { 
                      union @daily
                      union @weekly
                      timestats credit_pct: any(credit_pct), group_by(legend)
                    }
                                        
                                        
                    filter _c_valid_to < query_end_time()
                EOT
            },
            {
                id       = "stage-sjdrch0o"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-apcfuplb"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "User",
                                123,
                            ],
                            [
                                "_c_valid_from",
                                215,
                            ],
                            [
                                "_c_valid_to",
                                266,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                273,
                            ],
                            [
                                "compute_limit",
                                222,
                            ],
                            [
                                "credit_limit_per_hour",
                                268,
                            ],
                            [
                                "credit_pct",
                                209,
                            ],
                            [
                                "credits",
                                418,
                            ],
                            [
                                "credits_consumed_per_1h",
                                244,
                            ],
                            [
                                "credits_consumed_per_24h",
                                262,
                            ],
                            [
                                "legend",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1998
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 18
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-xtky876a"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-8sb6vdf6"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-apcfuplb"
                        },
                    ]
                    isInternal         = false
                    label              = "Stat Query"
                    managers           = [
                        {
                            id         = "usyt67mx"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Color"
                                    fieldConfig     = {
                                        unit    = "percent (0-100)"
                                        visible = false
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Dashed lines"
                                        mode          = "Value"
                                        startingColor = "Green"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-xvrgqqic"
                                                value        = 100
                                            },
                                        ]
                                        visible       = true
                                    }
                                    type            = "singlefield"
                                }
                                source = {
                                    table = {
                                        field         = "credit_pct"
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "singlefield"
                                    }
                                    type  = "table"
                                }
                                type   = "singlevalue"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 100
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-ficnkkh8"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-am0m8byh"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(metric, \"query\") ",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(query_credits_per_day), group_by()",
                                "}",
                                "leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day",
                                "make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0",
                                "",
                                "",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()",
                                "  make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0",
                                "  make_col legend: \"% of limit used in the last 7d\"",
                                "}",
                                "",
                                "<- @weekly {   ",
                                "  timestats credit_pct: any(credit_pct), group_by(legend)",
                                "  filter _c_valid_to < query_end_time()",
                                "}",
                                "",
                                " ",
                                "",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(metric, "query") 
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(query_credits_per_day), group_by()
                    }
                    leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day
                    make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0
                                        
                                        
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()
                      make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0
                      make_col legend: "% of limit used in the last 7d"
                    }
                                        
                    <- @weekly {   
                      timestats credit_pct: any(credit_pct), group_by(legend)
                      filter _c_valid_to < query_end_time()
                    }
                EOT
            },
            {
                id       = "stage-apcfuplb"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1713
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 19
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-0es43wah"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-iuajnnfm"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "timechart 1h, ",
                                "    query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),",
                                "    transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),",
                                "    ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),",
                                "    ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),",
                                "    ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),",
                                "    ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),",
                                "    group_by()",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "// pick_col",
                                "//     BUNDLE_TIMESTAMP,",
                                "//     compute_credit_limit_per_day, ",
                                "//     query_credits_per_day,",
                                "//     ingest_totalGib_limit_per_day,",
                                "//     ingest_metricDpm_limit_per_day,",
                                "//     ingest_logGib_limit_per_day,",
                                "//     ingest_spanGib_limit_per_day",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    timechart 1h, 
                        query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),
                        transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),
                        ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),
                        ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),
                        ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),
                        ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),
                        group_by()
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    // pick_col
                    //     BUNDLE_TIMESTAMP,
                    //     compute_credit_limit_per_day, 
                    //     query_credits_per_day,
                    //     ingest_totalGib_limit_per_day,
                    //     ingest_metricDpm_limit_per_day,
                    //     ingest_logGib_limit_per_day,
                    //     ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-862jbjys"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-w4l76q3y"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "User",
                                123,
                            ],
                            [
                                "_c_valid_from",
                                215,
                            ],
                            [
                                "_c_valid_to",
                                266,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                273,
                            ],
                            [
                                "compute_limit",
                                222,
                            ],
                            [
                                "credit_limit_per_hour",
                                268,
                            ],
                            [
                                "credit_pct",
                                209,
                            ],
                            [
                                "credits",
                                418,
                            ],
                            [
                                "credits_consumed_per_1h",
                                244,
                            ],
                            [
                                "credits_consumed_per_24h",
                                262,
                            ],
                            [
                                "legend",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1993
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 20
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-xtky876a"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-8sb6vdf6"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-w4l76q3y"
                        },
                    ]
                    isInternal         = false
                    label              = "Acceleration Compute Units Used vs. Daily Limit"
                    managers           = [
                        {
                            id         = "6y2l2nl9"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Yellow"
                                            key   = "% of limit used in the last 1h"
                                        },
                                        {
                                            color = "Blue"
                                            key   = "% of limit used in the last 24h"
                                        },
                                        {
                                            color = "Purple"
                                            key   = "% of limit used in the last 7d"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        placement = "bottom"
                                        type      = "list"
                                        visible   = true
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Dashed lines"
                                        mode          = "Value"
                                        startingColor = "Green"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-dee7xglz"
                                                value        = 100
                                            },
                                        ]
                                        visible       = true
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        unit    = "percent (0-100)"
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "credit_pct"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-1bf9rhs5"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-x6j2eq6p"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(metric, \"transform\") or contains(metric, \"monitor\") ",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(transform_credits_per_day), group_by()",
                                "}",
                                "leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day",
                                "make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0",
                                "",
                                "@hourly <- @ {",
                                "  make_col credit_pct: credits_consumed_per_1h / credit_limit_per_hour * 100.0",
                                "  make_col legend: \"% of limit used in the last 1h\"",
                                "}",
                                "",
                                "@daily <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 24h), credits_consumed_per_24h: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()",
                                "  make_col credit_pct: credits_consumed_per_24h / compute_credit_limit_per_day * 100.0",
                                "  make_col legend: \"% of limit used in the last 24h\"",
                                "}",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()",
                                "  make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0",
                                "  make_col legend: \"% of limit used in the last 7d\"",
                                "}",
                                "",
                                "<- @hourly { ",
                                "  union @daily",
                                "  union @weekly",
                                "  timestats credit_pct: any(credit_pct), group_by(legend)",
                                "}",
                                "",
                                "",
                                "filter _c_valid_to < query_end_time()",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(metric, "transform") or contains(metric, "monitor") 
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(transform_credits_per_day), group_by()
                    }
                    leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day
                    make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0
                                        
                    @hourly <- @ {
                      make_col credit_pct: credits_consumed_per_1h / credit_limit_per_hour * 100.0
                      make_col legend: "% of limit used in the last 1h"
                    }
                                        
                    @daily <- @ {
                      make_event
                      timechart 1h, frame(back: 24h), credits_consumed_per_24h: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_day: avg(compute_credit_limit_per_day), group_by()
                      make_col credit_pct: credits_consumed_per_24h / compute_credit_limit_per_day * 100.0
                      make_col legend: "% of limit used in the last 24h"
                    }
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()
                      make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0
                      make_col legend: "% of limit used in the last 7d"
                    }
                                        
                    <- @hourly { 
                      union @daily
                      union @weekly
                      timestats credit_pct: any(credit_pct), group_by(legend)
                    }
                                        
                                        
                    filter _c_valid_to < query_end_time()
                EOT
            },
            {
                id       = "stage-8rqiy5rx"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-w4l76q3y"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "User",
                                123,
                            ],
                            [
                                "_c_valid_from",
                                215,
                            ],
                            [
                                "_c_valid_to",
                                266,
                            ],
                            [
                                "compute_credit_limit_per_day",
                                273,
                            ],
                            [
                                "compute_limit",
                                222,
                            ],
                            [
                                "credit_limit_per_hour",
                                268,
                            ],
                            [
                                "credit_pct",
                                209,
                            ],
                            [
                                "credits",
                                418,
                            ],
                            [
                                "credits_consumed_per_1h",
                                244,
                            ],
                            [
                                "credits_consumed_per_24h",
                                262,
                            ],
                            [
                                "legend",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1993
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 21
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-xtky876a"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-8sb6vdf6"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-w4l76q3y"
                        },
                    ]
                    isInternal         = false
                    label              = "Stat. Acceleration"
                    managers           = [
                        {
                            id         = "sjht16gk"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Color"
                                    fieldConfig     = {
                                        unit    = "percent (0-100)"
                                        visible = false
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Dashed lines"
                                        mode          = "Value"
                                        startingColor = "Green"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-dee7xglz"
                                                value        = 100
                                            },
                                        ]
                                        visible       = true
                                    }
                                    type            = "singlefield"
                                }
                                source = {
                                    table = {
                                        field         = "credit_pct"
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            fnArgs     = null
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "singlefield"
                                    }
                                    type  = "table"
                                }
                                type   = "singlevalue"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 100
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-h3m9mu0y"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-u3nki1g9"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(metric, \"transform\") or contains(metric, \"monitor\") ",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(transform_credits_per_day), group_by()",
                                "}",
                                "leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day",
                                "make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0",
                                "",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),",
                                "    compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()",
                                "  make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0",
                                "  make_col legend: \"% of limit used in the last 7d\"",
                                "}",
                                "",
                                "",
                                "<- @weekly {   ",
                                "  timestats credit_pct: any(credit_pct), group_by(legend)",
                                "  filter _c_valid_to < query_end_time()",
                                "}",
                                "",
                                " ",
                                "",
                                "",
                                "",
                                "",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(metric, "transform") or contains(metric, "monitor") 
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 1h, ahead: 2h), compute_credit_limit_per_day: avg(transform_credits_per_day), group_by()
                    }
                    leftjoin on(true), compute_credit_limit_per_day: @limits.compute_credit_limit_per_day
                    make_col credit_limit_per_hour: compute_credit_limit_per_day / 24.0
                                        
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),
                        compute_credit_limit_per_7d: avg(compute_credit_limit_per_day) * 7, group_by()
                      make_col credit_pct: credits_consumed_per_7d / compute_credit_limit_per_7d * 100.0
                      make_col legend: "% of limit used in the last 7d"
                    }
                                        
                                        
                    <- @weekly {   
                      timestats credit_pct: any(credit_pct), group_by(legend)
                      filter _c_valid_to < query_end_time()
                    }
                EOT
            },
            {
                id       = "stage-w4l76q3y"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1713
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 22
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-nbg5xraw"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-4qe7q7dh"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "timechart 1h, ",
                                "    query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),",
                                "    transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),",
                                "    ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),",
                                "    ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),",
                                "    ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),",
                                "    ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),",
                                "    group_by()",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "// pick_col",
                                "//     BUNDLE_TIMESTAMP,",
                                "//     compute_credit_limit_per_day, ",
                                "//     query_credits_per_day,",
                                "//     ingest_totalGib_limit_per_day,",
                                "//     ingest_metricDpm_limit_per_day,",
                                "//     ingest_logGib_limit_per_day,",
                                "//     ingest_spanGib_limit_per_day",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    timechart 1h, 
                        query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),
                        transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),
                        ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),
                        ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),
                        ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),
                        ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),
                        group_by()
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    // pick_col
                    //     BUNDLE_TIMESTAMP,
                    //     compute_credit_limit_per_day, 
                    //     query_credits_per_day,
                    //     ingest_totalGib_limit_per_day,
                    //     ingest_metricDpm_limit_per_day,
                    //     ingest_logGib_limit_per_day,
                    //     ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-l4m8nbis"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1713
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 23
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-sz98ugrf"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-zq778y5p"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "timechart 1h, ",
                                "    query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),",
                                "    transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),",
                                "    ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),",
                                "    ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),",
                                "    ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),",
                                "    ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),",
                                "    group_by()",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "// pick_col",
                                "//     BUNDLE_TIMESTAMP,",
                                "//     compute_credit_limit_per_day, ",
                                "//     query_credits_per_day,",
                                "//     ingest_totalGib_limit_per_day,",
                                "//     ingest_metricDpm_limit_per_day,",
                                "//     ingest_logGib_limit_per_day,",
                                "//     ingest_spanGib_limit_per_day",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    timechart 1h, 
                        query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),
                        transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),
                        ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),
                        ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),
                        ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),
                        ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),
                        group_by()
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    // pick_col
                    //     BUNDLE_TIMESTAMP,
                    //     compute_credit_limit_per_day, 
                    //     query_credits_per_day,
                    //     ingest_totalGib_limit_per_day,
                    //     ingest_metricDpm_limit_per_day,
                    //     ingest_logGib_limit_per_day,
                    //     ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-hrdb4y2p"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
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
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 3402
                        viewType                    = "Auto"
                    }
                    disableOutput      = true
                    index              = 24
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-f45lt1ll"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Base - Observe Usage Metrics Primary Dataset"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 1000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindStats",
                            "ResultKindData",
                            "ResultKindSchema",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-yv8r4xva"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-adj1cuqp"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", ",
                                "    kind=\"transform_livemode\", \"acceleration - ongoing - livemode\",",
                                "    kind=\"backfill\", \"acceleration - ondemand\",",
                                "    contains(kind, \"query\") and (contains(kind, \"livemode\")=false), \"query\", ",
                                "    contains(kind, \"query\") and contains(kind, \"livemode\"), \"query - livemode\",",
                                "    true, kind)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", 
                        kind="transform_livemode", "acceleration - ongoing - livemode",
                        kind="backfill", "acceleration - ondemand",
                        contains(kind, "query") and (contains(kind, "livemode")=false), "query", 
                        contains(kind, "query") and contains(kind, "livemode"), "query - livemode",
                        true, kind)
                EOT
            },
            {
                id       = "stage-156nbcnv"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = "stage-hrdb4y2p"
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-l4m8nbis"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "A_credits_remaining_pct_last_not_null",
                                216,
                            ],
                            [
                                "_c_valid_from",
                                173,
                            ],
                            [
                                "at_hard_limit",
                                199,
                            ],
                            [
                                "at_soft_limit",
                                170,
                            ],
                            [
                                "at_throttled_limit",
                                187,
                            ],
                            [
                                "credits",
                                282,
                            ],
                            [
                                "credits_per_day",
                                201,
                            ],
                            [
                                "query_quota_usage",
                                179,
                            ],
                            [
                                "remaining_token_bucket_credits",
                                344,
                            ],
                            [
                                "total_token_bucket_credits",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 3402
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 25
                    inputList          = [
                        {
                            id          = "query-input-hw6m8x3g"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-hrdb4y2p"
                        },
                        {
                            id          = "query-input-41pk029p"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-l4m8nbis"
                        },
                    ]
                    isInternal         = false
                    label              = "Query Compute Usage vs. Limit"
                    managers           = [
                        {
                            id         = "yoyyc921"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Red"
                                            key   = "Usage Limit for One Week"
                                        },
                                        {
                                            color = "Yellow"
                                            key   = "Usage in 24 Hours"
                                        },
                                        {
                                            color = "Purple"
                                            key   = "Usage in Last 7 Days"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        type    = "list"
                                        visible = true
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Lines"
                                        mode          = "Value"
                                        startingColor = "Default"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-77nj51t5"
                                                value        = 0
                                            },
                                        ]
                                        visible       = false
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        axisLabel = "Compute Units"
                                        bounds    = {
                                            start = 0
                                        }
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "val"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 400
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-30q6wsce"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-6okn0wtg"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false and not is_null(user_id)",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "leftjoin on(true), query_credits_per_day: @\"Credit Limits Raw (Last Set)\".query_credits_per_day",
                                "make_col credit_limit_per_hour: query_credits_per_day / 24.0",
                                "make_col credits_consumed_last_day: window(sum(credits_consumed_per_1h), frame(back:1d))",
                                "make_event",
                                "timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),credits_consumed_last_day: last_not_null(credits_consumed_last_day),",
                                "  compute_credit_limit_per_7d: last_not_null(query_credits_per_day) * 7, group_by()",
                                "make_col legend: \"% of limit used in the last 7d\"",
                                "",
                                "filter _c_valid_to < query_end_time()",
                                "",
                                "make_col",
                                "    stats: make_object(",
                                "        \"Usage in Last 7 Days\": credits_consumed_per_7d,",
                                "        \"Usage in 24 Hours\": credits_consumed_last_day,",
                                "        \"Usage Limit for One Week\": compute_credit_limit_per_7d",
                                "    )",
                                "",
                                "flatten stats",
                                "",
                                "make_col statName: replace(replace(_c_stats_path, \"['\", \"\"), \"']\", \"\")",
                                "",
                                "make_event",
                                "timechart 1h, val: avg(float64(_c_stats_value)), group_by(statName)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(kind, "query") and contains(kind, "livemode")=false and not is_null(user_id)
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    leftjoin on(true), query_credits_per_day: @"Credit Limits Raw (Last Set)".query_credits_per_day
                    make_col credit_limit_per_hour: query_credits_per_day / 24.0
                    make_col credits_consumed_last_day: window(sum(credits_consumed_per_1h), frame(back:1d))
                    make_event
                    timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),credits_consumed_last_day: last_not_null(credits_consumed_last_day),
                      compute_credit_limit_per_7d: last_not_null(query_credits_per_day) * 7, group_by()
                    make_col legend: "% of limit used in the last 7d"
                                        
                    filter _c_valid_to < query_end_time()
                                        
                    make_col
                        stats: make_object(
                            "Usage in Last 7 Days": credits_consumed_per_7d,
                            "Usage in 24 Hours": credits_consumed_last_day,
                            "Usage Limit for One Week": compute_credit_limit_per_7d
                        )
                                        
                    flatten stats
                                        
                    make_col statName: replace(replace(_c_stats_path, "['", ""), "']", "")
                                        
                    make_event
                    timechart 1h, val: avg(float64(_c_stats_value)), group_by(statName)
                EOT
            },
            {
                id       = "stage-3t9et1z4"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1713
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 26
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-qk6ts8xk"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-7mmuu4wa"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "timechart 1h, ",
                                "    query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),",
                                "    transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),",
                                "    ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),",
                                "    ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),",
                                "    ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),",
                                "    ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),",
                                "    group_by()",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "// pick_col",
                                "//     BUNDLE_TIMESTAMP,",
                                "//     compute_credit_limit_per_day, ",
                                "//     query_credits_per_day,",
                                "//     ingest_totalGib_limit_per_day,",
                                "//     ingest_metricDpm_limit_per_day,",
                                "//     ingest_logGib_limit_per_day,",
                                "//     ingest_spanGib_limit_per_day",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    timechart 1h, 
                        query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),
                        transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),
                        ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),
                        ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),
                        ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),
                        ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),
                        group_by()
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    // pick_col
                    //     BUNDLE_TIMESTAMP,
                    //     compute_credit_limit_per_day, 
                    //     query_credits_per_day,
                    //     ingest_totalGib_limit_per_day,
                    //     ingest_metricDpm_limit_per_day,
                    //     ingest_logGib_limit_per_day,
                    //     ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-so1pcn9r"
                input    = [
                    {
                        datasetId   = "42962956"
                        datasetPath = null
                        inputName   = "Raw Usage Events"
                        inputRole   = "Data"
                        stageId     = null
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-3t9et1z4"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "hour",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "_c_valid_from",
                                202,
                            ],
                            [
                                "_c_valid_to",
                                214,
                            ],
                            [
                                "avg_compute_credit_limit_per_day",
                                220,
                            ],
                            [
                                "compute_credit_limit_per_7d",
                                219,
                            ],
                            [
                                "credit_pct",
                                149,
                            ],
                            [
                                "credits",
                                341,
                            ],
                            [
                                "credits_consumed_per_1h",
                                225,
                            ],
                            [
                                "credits_consumed_per_7d",
                                323,
                            ],
                            [
                                "event",
                                155,
                            ],
                            [
                                "hour",
                                247,
                            ],
                            [
                                "legend",
                                293,
                            ],
                            [
                                "value",
                                311,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1998
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 27
                    inputList          = [
                        {
                            datasetId   = "42962956"
                            id          = "query-input-4bj0kszw"
                            inputName   = "Raw Usage Events"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                        {
                            id          = "query-input-l4hyqpnr"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-3t9et1z4"
                        },
                    ]
                    isInternal         = false
                    label              = "Acceleration Compute Usage vs. Limit"
                    managers           = [
                        {
                            id         = "xdjv983m"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Red"
                                            key   = "Daily Acceleration limit"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        placement = "bottom"
                                        type      = "list"
                                        visible   = true
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        axisLabel = "Compute Units"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "credits"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 300
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Raw Usage Events"
                            id            = "step-910izhnc"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-bcrehvw4"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "filter in(type, \"xfrm_dataset\", \"xfrm_monitor\", \"metric_sma_query_summary\", \"xfrm_metric_sma\") ",
                                "",
                                "make_col hour:parse_isotime(string(event.hour))",
                                "set_valid_from options(max_time_diff:4h), hour",
                                "            ",
                                "make_col credits_used:float64(event.credits_used)",
                                "",
                                "filter event.type != \"backfill\"",
                                "",
                                "make_col",
                                "    credits_transform:case(",
                                "      type=\"xfrm_dataset\", case(version >= 20210910, credits_used, true, credits_used/3.6e14),",
                                "      type=\"metric_sma_query_summary\", credits_used,",
                                "      type=\"xfrm_metric_sma\", credits_used,",
                                "      type=\"xfrm_monitor\", credits_used,",
                                "      true, 0.0),",
                                "      // Need a separate sub id to differentiate between xfrm_dataset, metric_sma_query_summary and xfrm_metric_sma",
                                "      transform_sub_id: case(type=\"xfrm_metric_sma\", 3, type=\"metric_sma_query_summary\", 2, true, 1)",
                                "// compute the max per hour                 ",
                                "statsby value:float64(max(credits_transform)), group_by(hour,user_id, dataset_id, monitor_id, customer_id, package)",
                                "statsby value:float64(sum(value)), group_by(hour)",
                                "set_valid_from options(max_time_diff:4h), hour",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "@limits <- @\"Credit Limits Raw (Last Set)\"{",
                                "  timechart 1h, frame(back: 7d), credits: avg(transform_credits_per_day), group_by()",
                                "  make_col legend: \"Daily Acceleration limit\"",
                                "}",
                                "",
                                "@weekly <- @ {",
                                "  make_event",
                                "  timechart 1h, frame(back: 7d), credits: sum(credits_consumed_per_1h)/7, group_by()",
                                "  make_col legend: \"Acceleration per day (7d rolling average)\"",
                                "}",
                                "",
                                "<- @weekly{",
                                "    union @limits",
                                "    timestats credits: any(credits), group_by(legend)",
                                "}",
                                "",
                                "filter _c_valid_to < query_end_time()",
                                "",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter in(type, "xfrm_dataset", "xfrm_monitor", "metric_sma_query_summary", "xfrm_metric_sma") 
                                        
                    make_col hour:parse_isotime(string(event.hour))
                    set_valid_from options(max_time_diff:4h), hour
                                                    
                    make_col credits_used:float64(event.credits_used)
                                        
                    filter event.type != "backfill"
                                        
                    make_col
                        credits_transform:case(
                          type="xfrm_dataset", case(version >= 20210910, credits_used, true, credits_used/3.6e14),
                          type="metric_sma_query_summary", credits_used,
                          type="xfrm_metric_sma", credits_used,
                          type="xfrm_monitor", credits_used,
                          true, 0.0),
                          // Need a separate sub id to differentiate between xfrm_dataset, metric_sma_query_summary and xfrm_metric_sma
                          transform_sub_id: case(type="xfrm_metric_sma", 3, type="metric_sma_query_summary", 2, true, 1)
                    // compute the max per hour                 
                    statsby value:float64(max(credits_transform)), group_by(hour,user_id, dataset_id, monitor_id, customer_id, package)
                    statsby value:float64(sum(value)), group_by(hour)
                    set_valid_from options(max_time_diff:4h), hour
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                    @limits <- @"Credit Limits Raw (Last Set)"{
                      timechart 1h, frame(back: 7d), credits: avg(transform_credits_per_day), group_by()
                      make_col legend: "Daily Acceleration limit"
                    }
                                        
                    @weekly <- @ {
                      make_event
                      timechart 1h, frame(back: 7d), credits: sum(credits_consumed_per_1h)/7, group_by()
                      make_col legend: "Acceleration per day (7d rolling average)"
                    }
                                        
                    <- @weekly{
                        union @limits
                        timestats credits: any(credits), group_by(legend)
                    }
                                        
                    filter _c_valid_to < query_end_time()
                EOT
            },
            {
                id       = "stage-yue4dbw2"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "Untitled stage 1_-21pk"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = []
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "compute_credit_limit_per_day",
                                263,
                            ],
                            [
                                "compute_limit",
                                253,
                            ],
                            [
                                "credit_limit",
                                143,
                            ],
                            [
                                "credits_per_day",
                                166,
                            ],
                            [
                                "ingest_logGb_limit_per_day",
                                261,
                            ],
                            [
                                "ingest_logGiB_limit_per_day",
                                163,
                            ],
                            [
                                "ingest_logGib_limit_per_day",
                                206,
                            ],
                            [
                                "ingest_metricDpm_limit_per_day",
                                306,
                            ],
                            [
                                "ingest_spanGb_limit_per_day",
                                273,
                            ],
                            [
                                "ingest_spanGib_limit_per_day",
                                183,
                            ],
                            [
                                "ingest_totalGb_limit_per_day",
                                326,
                            ],
                            [
                                "ingest_totalGib_limit_per_day",
                                208,
                            ],
                            [
                                "limit_per_day_occ",
                                205,
                            ],
                            [
                                "query_credits_per_day",
                                213,
                            ],
                            [
                                "transform_credits_per_day",
                                269,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 1713
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 28
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-8iuelehd"
                            inputName   = "Untitled stage 1_-21pk"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Credit Limits Raw (Last Set)"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindColumnStats",
                            "ResultKindVolumeStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "Untitled stage 1_-21pk"
                            id            = "step-stxhdepz"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-129liac9"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"contract_limits\")",
                                "",
                                "timechart 1h, ",
                                "    query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),",
                                "    transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),",
                                "    ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),",
                                "    ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),",
                                "    ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),",
                                "    ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),",
                                "    group_by()",
                                "    ",
                                "make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day",
                                "// pick_col",
                                "//     BUNDLE_TIMESTAMP,",
                                "//     compute_credit_limit_per_day, ",
                                "//     query_credits_per_day,",
                                "//     ingest_totalGib_limit_per_day,",
                                "//     ingest_metricDpm_limit_per_day,",
                                "//     ingest_logGib_limit_per_day,",
                                "//     ingest_spanGib_limit_per_day",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "contract_limits")
                                        
                    timechart 1h, 
                        query_credits_per_day:last_not_null(int64(FIELDS.query_credits)),
                        transform_credits_per_day:last_not_null(int64(FIELDS.transform_credits)),
                        ingest_spanGib_limit_per_day: last_not_null(int64(FIELDS.ingest_span_limit)/1024/1024/1024),
                        ingest_logGib_limit_per_day: last_not_null(int64(FIELDS.ingest_log_limit)/1024/1024/1024),
                        ingest_metricDpm_limit_per_day: last_not_null(int64(FIELDS.ingest_metric_dpm)),
                        ingest_totalGib_limit_per_day: last_not_null(int64(FIELDS.ingest_total_limit)/1024/1024/1024),
                        group_by()
                                            
                    make_col compute_credit_limit_per_day: query_credits_per_day+transform_credits_per_day
                    // pick_col
                    //     BUNDLE_TIMESTAMP,
                    //     compute_credit_limit_per_day, 
                    //     query_credits_per_day,
                    //     ingest_totalGib_limit_per_day,
                    //     ingest_metricDpm_limit_per_day,
                    //     ingest_logGib_limit_per_day,
                    //     ingest_spanGib_limit_per_day
                EOT
            },
            {
                id       = "stage-35rfji9u"
                input    = [
                    {
                        datasetId   = "42962995"
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
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
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 3402
                        viewType                    = "Auto"
                    }
                    disableOutput      = true
                    index              = 29
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-f45lt1ll"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    isInternal         = false
                    label              = "Base - Observe Usage Metrics Primary Dataset"
                    managers           = []
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 1000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindStats",
                            "ResultKindData",
                            "ResultKindSchema",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-dj3lc4ud"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-hl1831p5"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", ",
                                "    kind=\"transform_livemode\", \"acceleration - ongoing - livemode\",",
                                "    kind=\"backfill\", \"acceleration - ondemand\",",
                                "    contains(kind, \"query\") and (contains(kind, \"livemode\")=false), \"query\", ",
                                "    contains(kind, \"query\") and contains(kind, \"livemode\"), \"query - livemode\",",
                                "    true, kind)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", 
                        kind="transform_livemode", "acceleration - ongoing - livemode",
                        kind="backfill", "acceleration - ondemand",
                        contains(kind, "query") and (contains(kind, "livemode")=false), "query", 
                        contains(kind, "query") and contains(kind, "livemode"), "query - livemode",
                        true, kind)
                EOT
            },
            {
                id       = "stage-i9zs4so5"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "usage/Observe Usage Metrics"
                        inputRole   = "Data"
                        stageId     = "stage-35rfji9u"
                    },
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Limits Raw (Last Set)"
                        inputRole   = "Data"
                        stageId     = "stage-yue4dbw2"
                    },
                ]
                layout   = {
                    cardLinks          = []
                    dataLinks          = []
                    dataTableViewState = {
                        autoExpandColumnWidth       = false
                        cellValuePresentation       = []
                        columnOrderOverride         = [
                            [
                                0,
                                "_c_valid_from",
                            ],
                            [
                                1,
                                "_c_valid_to",
                            ],
                        ]
                        columnVisibility            = []
                        columnWidths                = [
                            [
                                "A_credits_remaining_pct_last_not_null",
                                216,
                            ],
                            [
                                "_c_valid_from",
                                173,
                            ],
                            [
                                "at_hard_limit",
                                199,
                            ],
                            [
                                "at_soft_limit",
                                170,
                            ],
                            [
                                "at_throttled_limit",
                                187,
                            ],
                            [
                                "credits",
                                282,
                            ],
                            [
                                "credits_per_day",
                                201,
                            ],
                            [
                                "query_quota_usage",
                                179,
                            ],
                            [
                                "remaining_token_bucket_credits",
                                344,
                            ],
                            [
                                "total_token_bucket_credits",
                                267,
                            ],
                        ]
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeights                  = []
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableWidth                  = 3402
                        viewType                    = "Auto"
                    }
                    disableOutput      = false
                    index              = 30
                    inputList          = [
                        {
                            id          = "query-input-hw6m8x3g"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-35rfji9u"
                        },
                        {
                            id          = "query-input-41pk029p"
                            inputName   = "Credit Limits Raw (Last Set)"
                            inputRole   = "Data"
                            isUserInput = true
                            stageId     = "stage-yue4dbw2"
                        },
                    ]
                    isInternal         = false
                    label              = "Query Compute Usage vs. Limit"
                    managers           = [
                        {
                            id         = "c7cry9z6"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Mapping"
                                    colorMapping    = [
                                        {
                                            color = "Red"
                                            key   = "Daily Limit"
                                        },
                                        {
                                            color = "Yellow"
                                            key   = "Usage in 24 Hours"
                                        },
                                        {
                                            color = "Purple"
                                            key   = "Avg Daily Usage in Last 7 Days"
                                        },
                                    ]
                                    hideGridLines   = false
                                    legend          = {
                                        type    = "list"
                                        visible = true
                                    }
                                    thresholds      = {
                                        defaultColor  = "Default"
                                        drawType      = "Lines"
                                        mode          = "Value"
                                        startingColor = "Default"
                                        thresholds    = [
                                            {
                                                exceedsColor = "Red"
                                                id           = "threshold-77nj51t5"
                                                value        = 0
                                            },
                                        ]
                                        visible       = false
                                    }
                                    type            = "xy"
                                    xConfig         = {
                                        visible = true
                                    }
                                    yConfig         = {
                                        axisLabel = "Compute Units"
                                        bounds    = {
                                            start = 0
                                        }
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "avg"
                                            resolution = "AUTO"
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "val"
                                    }
                                    type  = "table"
                                }
                                type   = "timeseries"
                            }
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        limit               = 10000
                        linkify             = true
                        loadEverything      = false
                        progressive         = true
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindVolumeStats",
                            "ResultKindColumnStats",
                            "ResultKindProgress",
                        ]
                        rollup              = {}
                        wantBuckets         = 300
                    }
                    renderType         = "TABLE"
                    serializable       = true
                    steps              = [
                        {
                            customName    = "Input"
                            customSummary = "usage/Observe Usage Metrics"
                            id            = "step-nn6zgkv6"
                            index         = 0
                            isPinned      = false
                            opal          = []
                            type          = "InputStep"
                        },
                        {
                            customSummary = ""
                            id            = "step-fxek7273"
                            index         = 1
                            isPinned      = false
                            opal          = [
                                "#hint{cacheIntermediateResults:true}",
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false and not is_null(user_id)",
                                "timechart 1h, credits_consumed_per_1h: sum(value), group_by()",
                                "",
                                "",
                                "leftjoin on(true), query_credits_per_day: @\"Credit Limits Raw (Last Set)\".query_credits_per_day",
                                "make_col credit_limit_per_hour: query_credits_per_day / 24.0",
                                "make_col credits_consumed_last_day: window(sum(credits_consumed_per_1h), frame(back:1d))",
                                "make_event",
                                "timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),credits_consumed_last_day: last_not_null(credits_consumed_last_day),",
                                "  compute_credit_limit_per_1d: last_not_null(query_credits_per_day), group_by()",
                                "make_col legend: \"% of limit used in the last 7d\"",
                                "",
                                "filter _c_valid_to < query_end_time()",
                                "",
                                "make_col",
                                "    stats: make_object(",
                                "        \"Avg Daily Usage in Last 7 Days\": credits_consumed_per_7d / 7.0,",
                                "        \"Usage in 24 Hours\": credits_consumed_last_day,",
                                "        \"Daily Limit\": compute_credit_limit_per_1d",
                                "    )",
                                "",
                                "flatten stats",
                                "",
                                "make_col statName: replace(replace(_c_stats_path, \"['\", \"\"), \"']\", \"\")",
                                "",
                                "make_event",
                                "timechart 1h, val: avg(float64(_c_stats_value)), group_by(statName)",
                            ]
                            type          = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab       = "OPAL"
                        inspectRailCollapsed = true
                        inspectRailPinned    = false
                        inspectRailWidth     = 640
                        railCollapseState    = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler        = true
                        stageTab             = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    #hint{cacheIntermediateResults:true}
                    filter contains(kind, "query") and contains(kind, "livemode")=false and not is_null(user_id)
                    timechart 1h, credits_consumed_per_1h: sum(value), group_by()
                                        
                                        
                    leftjoin on(true), query_credits_per_day: @"Credit Limits Raw (Last Set)".query_credits_per_day
                    make_col credit_limit_per_hour: query_credits_per_day / 24.0
                    make_col credits_consumed_last_day: window(sum(credits_consumed_per_1h), frame(back:1d))
                    make_event
                    timechart 1h, frame(back: 7d), credits_consumed_per_7d: sum(credits_consumed_per_1h),credits_consumed_last_day: last_not_null(credits_consumed_last_day),
                      compute_credit_limit_per_1d: last_not_null(query_credits_per_day), group_by()
                    make_col legend: "% of limit used in the last 7d"
                                        
                    filter _c_valid_to < query_end_time()
                                        
                    make_col
                        stats: make_object(
                            "Avg Daily Usage in Last 7 Days": credits_consumed_per_7d / 7.0,
                            "Usage in 24 Hours": credits_consumed_last_day,
                            "Daily Limit": compute_credit_limit_per_1d
                        )
                                        
                    flatten stats
                                        
                    make_col statName: replace(replace(_c_stats_path, "['", ""), "']", "")
                                        
                    make_event
                    timechart 1h, val: avg(float64(_c_stats_value)), group_by(statName)
                EOT
            },
        ]
    )
    workspace   = "o:::workspace:42962932"
}
