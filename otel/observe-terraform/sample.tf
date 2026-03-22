# terraform import observe_dashboard.usage_dashboard 42963052
resource "observe_dashboard" "usage_dashboard" {
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
                            title    = "Dashboard Content"
                        }
                        items = []
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "SUMMARY"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-d89xgq4i"
                                }
                                layout = {
                                    h = 10
                                    w = 4
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-mltfzo4b"
                                }
                                layout = {
                                    h = 22
                                    w = 8
                                    x = 4
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-s0mp1sqa"
                                }
                                layout = {
                                    h = 12
                                    w = 4
                                    x = 0
                                    y = 10
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-zb29idpw"
                                }
                                layout = {
                                    h = 12
                                    w = 4
                                    x = 0
                                    y = 22
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-vbhiq1oo"
                                }
                                layout = {
                                    h = 12
                                    w = 4
                                    x = 4
                                    y = 22
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-ctbzdrnn"
                                }
                                layout = {
                                    h = 12
                                    w = 4
                                    x = 8
                                    y = 22
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "DETAILED QUERY CREDIT CONSUMPTION"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-3sgj9bjl"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-v9bzbh8u"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 6
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-lb2fue6i"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 6
                                    y = 15
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-sbc2j3lh"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 0
                                    y = 15
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-nppe81mj"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 6
                                    y = 30
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-3vs362zh"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 0
                                    y = 30
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-u6ygy1aq"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 6
                                    y = 45
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-0jiyfjc7"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 0
                                    y = 45
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "DETAILED ACCELERATION AND MONITOR CREDIT CONSUMPTION"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-2fv1tl6y"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 6
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-a4h9nmet"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-1cu3u3fp"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 0
                                    y = 14
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-1x0kezif"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 6
                                    y = 14
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-oqq0944n"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 0
                                    y = 28
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-gcniv4np"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 6
                                    y = 28
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = false
                            title    = "DETAILED LIVE MODE CREDIT CONSUMPTION"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-7k2pqzjd"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-mxuscrc2"
                                }
                                layout = {
                                    h = 14
                                    w = 6
                                    x = 6
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-wi46afg6"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 6
                                    y = 14
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-l8zyc43r"
                                }
                                layout = {
                                    h = 15
                                    w = 6
                                    x = 0
                                    y = 14
                                }
                            },
                        ]
                    },
                    {
                        card  = {
                            cardType = "section"
                            closed   = true
                            title    = "Query/Acceleration Credit Manager"
                        }
                        items = [
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-ptjq1sko"
                                }
                                layout = {
                                    h = 7
                                    w = 6
                                    x = 6
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "text"
                                    text     = <<-EOT
                                        #### **Credit Manager
                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                        Use the [Credit Manager](https://docs.observeinc.com/en/latest/content/workspaces/CreditManager.html) to help ensure that your query and acceleration credit usage stays within a configurable budget.
                                                                                                                                                                                                        
                                        To better understand how Acceleration Manager behaves, please use the [Acceleration Credit Manager Dashboard](/workspace/42962932/dashboard/42963005).
                                    EOT
                                    title    = "Credit Manager Infromation and Links"
                                }
                                layout = {
                                    h = 7
                                    w = 6
                                    x = 0
                                    y = 0
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-pmpxsxwl"
                                }
                                layout = {
                                    h = 13
                                    w = 12
                                    x = 0
                                    y = 7
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-qqu5lksl"
                                }
                                layout = {
                                    h = 13
                                    w = 12
                                    x = 0
                                    y = 20
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-05h8r8hu"
                                }
                                layout = {
                                    h = 17
                                    w = 6
                                    x = 0
                                    y = 33
                                }
                            },
                            {
                                card   = {
                                    cardType = "stage"
                                    stageId  = "stage-vxx6oncs"
                                }
                                layout = {
                                    h = 17
                                    w = 6
                                    x = 6
                                    y = 33
                                }
                            },
                        ]
                    },
                ]
            }
            stageListLayout = {
                isModified = false
                parameters = [
                    {
                        allowEmpty            = true
                        defaultValue          = {
                            int64 = "24"
                        }
                        emptyValueEncoding    = "null"
                        emptyValueLabelOption = "null"
                        id                    = "resolution"
                        name                  = "Resolution (hours)"
                        valueKind             = {
                            type = "INT64"
                        }
                        viewType              = "numeric"
                    },
                ]
                timeRange  = {
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
    name        = "Usage Dashboard"
    parameters  = jsonencode(
        [
            {
                defaultValue = {
                    int64 = "24"
                }
                id           = "resolution"
                name         = "Resolution (hours)"
                valueKind    = {
                    arrayItemType   = null
                    keyForDatasetId = null
                    type            = "INT64"
                }
            },
        ]
    )
    stages      = jsonencode(
        [
            {
                id       = "stage-un8uhseg"
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
                    appearance         = "COLLAPSED"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
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
                        tableHeight                 = 143
                        tableWidth                  = 2646
                        viewType                    = "Auto"
                    }
                    index              = 0
                    inputList          = [
                        {
                            datasetId   = "42962995"
                            id          = "query-input-f45lt1ll"
                            inputName   = "usage/Observe Usage Metrics"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    label              = "Observe Usage Metrics Primary Dataset"
                    managers           = [
                        {
                            id                     = "cwv4oczr"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "usage/Observe Usage Metrics"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-42qnzr6w"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-5mep8fjg"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "make_col kind:replace(metric, \"credits_\", \"\")",
                                "make_col kind: case(kind=\"transform\", \"acceleration - ongoing\", ",
                                "    kind=\"transform_livemode\", \"acceleration - ongoing - livemode\",",
                                "    kind=\"backfill\", \"acceleration - ondemand\",",
                                "    kind=\"data_export\", \"data export\",",
                                "    contains(kind, \"query\") and (contains(kind, \"livemode\")=false), \"query\", ",
                                "    contains(kind, \"query\") and contains(kind, \"livemode\"), \"query - livemode\",",
                                "    true, kind)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADQCAYAAAA5+eykAAAAAXNSR0IArs4c6QAABQZJREFUeF7t0wENAAAIAkHpX9ocv50J2CE7R4BAVmDZ5IITIHAG7AkIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzqBB9qHANEyKGmGAAAAAElFTkSuQmCC"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col kind:replace(metric, "credits_", "")
                    make_col kind: case(kind="transform", "acceleration - ongoing", 
                        kind="transform_livemode", "acceleration - ongoing - livemode",
                        kind="backfill", "acceleration - ondemand",
                        kind="data_export", "data export",
                        contains(kind, "query") and (contains(kind, "livemode")=false), "query", 
                        contains(kind, "query") and contains(kind, "livemode"), "query - livemode",
                        true, kind)
                EOT
            },
            {
                id       = "stage-d89xgq4i"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Credit Usage by Kind_-s0mp"
                        inputRole   = "Data"
                        stageId     = "stage-s0mp1sqa"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            credits = 117
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 1
                    inputList          = [
                        {
                            id          = "query-input-rjd6qrjp"
                            inputName   = "Credit Usage by Kind_-s0mp"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-s0mp1sqa"
                        },
                    ]
                    label              = "Overall Credits"
                    managers           = [
                        {
                            id                     = "r3t3tue3"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "2vjbaa7o"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color           = "Default"
                                    colorConfigType = "Color"
                                    fieldConfig     = {
                                        unit    = null
                                        visible = false
                                    }
                                    singleStatLabel = "Credits Consumed"
                                    thresholds      = null
                                    type            = "singlefield"
                                }
                                source = {
                                    table = {
                                        field         = "credits"
                                        groupFields   = []
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 150
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Credit Usage by Kind_-s0mp"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-523tjl3l"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-f3d514hs"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "statsby credits:round(sum(credits), 2), group_by()",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = "statsby credits:round(sum(credits), 2), group_by()"
            },
            {
                id       = "stage-mltfzo4b"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 2
                    inputList          = [
                        {
                            id          = "query-input-re0s9b2y"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Credit Usage by Kind"
                    managers           = [
                        {
                            id                     = "deef4f1a"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "lmjjy371"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "top"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            "kind",
                                        ]
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-u100hp7m"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-11wgskhh"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(metric, \"credits\")",
                                "timechart options(empty_bins:true), duration_hr(24), _ob_value:sum(value), group_by(kind)",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
                                        expressions           = [
                                            {
                                                autoResolution       = false
                                                dataVis              = {
                                                    config = {
                                                        areaFillType        = "SolidFill"
                                                        legend              = {
                                                            placement        = "top"
                                                            showNullAsOption = "Custom"
                                                            showNullAsString = "Other"
                                                            type             = "list"
                                                            visible          = true
                                                        }
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Credits"
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = [
                                                                "kind",
                                                            ]
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
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-t4mq20x1"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A__ob_value_avg:avg(_ob_value), group_by(kind)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(metric, "credits")
                    timechart options(empty_bins:true), duration_hr(24), _ob_value:sum(value), group_by(kind)
                    timechart options(empty_bins:true), 1d, A__ob_value_avg:avg(_ob_value), group_by(kind)
                EOT
            },
            {
                id       = "stage-s0mp1sqa"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 160
                            credits      = 121
                            kind         = 238
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {
                                kind = {
                                    "1" = true
                                }
                            }
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "cell"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 767
                        viewType                    = "Auto"
                    }
                    index              = 3
                    inputList          = [
                        {
                            id          = "query-input-xlmcye0o"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Credit Usage by Kind"
                    managers           = [
                        {
                            id                     = "brj5ubir"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-z7n3n5qj"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-3j2hl7z8"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(metric, \"credits\")",
                                "statsby credits:round(sum(value), 2), group_by(kind)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, kind, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(metric, "credits")
                    statsby credits:round(sum(value), 2), group_by(kind)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, kind, @."% of total"
                EOT
            },
            {
                id       = "stage-zb29idpw"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 4
                    inputList          = [
                        {
                            id          = "query-input-r6yjhtvk"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Active Users"
                    managers           = [
                        {
                            id                     = "n1yhhnto"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "67iling2"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = false
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = []
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
                                        y             = "A_ActiveUsers_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-apkcyki2"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-53sfptvz"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), duration_hr(24), ActiveUsers:count_distinct(user_id), groupby()",
                                "",
                                "//make events and show time for export in worksheets",
                                "make_event",
                                "colshow _c_valid_from:true",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                            visible          = false
                                                        }
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            visible = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = []
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
                                                            y             = "A_ActiveUsers_avg"
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
                                                field                = "ActiveUsers"
                                                filterActions        = []
                                                groupBy              = []
                                                id                   = "datasetQueryExpression-cpudqzav"
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
                                                valueColumnId        = "A_ActiveUsers_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-5e2a52bd"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-cpudqzav",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-4nxxlbtn"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_ActiveUsers_avg:avg(ActiveUsers), group_by()",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    timechart options(empty_bins:true), duration_hr(24), ActiveUsers:count_distinct(user_id), groupby()
                                        
                    //make events and show time for export in worksheets
                    make_event
                    colshow _c_valid_from:true
                    timechart options(empty_bins:true), 1d, A_ActiveUsers_avg:avg(ActiveUsers), group_by()
                EOT
            },
            {
                id       = "stage-vbhiq1oo"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "package"
                            "3" = "dataset_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {
                            Dataset = 241
                            Package = 219
                            credits = 202
                            hour    = 236
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 214
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 5
                    inputList          = [
                        {
                            id          = "query-input-kygwhhm5"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Storage Usage by Package (compressed)"
                    managers           = [
                        {
                            id                     = "u3xb0m44"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "sxavqzdc"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = ""
                                        unit      = "By"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "sum"
                                            fnArgs     = []
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_bytes_sum"
                                    }
                                    topK  = {
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-qjm3zy67"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-47czsbh8"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter metric=\"storage_bytes\"",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby bytes:last_not_null(value), group_by(dataset_id, package)",
                                "    statsby bytes:sum(bytes), group_by(package)",
                                "    topk 14, max(bytes), group_by(package)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin package=@topk.package, package:@topk.package",
                                "    timechart duration_hr(24), bytes:last_not_null(value), group_by(package, dataset_id)",
                                "}",
                                "",
                                "",
                                "",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = ""
                                                            unit      = "By"
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            statsBy       = {
                                                                fn = "avg"
                                                            }
                                                            timechart     = {
                                                                fn         = "sum"
                                                                fnArgs     = []
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_bytes_sum"
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
                                                field                = "bytes"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "Package"
                                                        srcFields = [
                                                            "package",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-svwa2ji1"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "sum"
                                                summaryFunctionArgs  = []
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_bytes_sum"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-2vzim16n"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-svwa2ji1",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-0fhostes"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_bytes_sum:sum(bytes), group_by(^Package...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter metric="storage_bytes"
                    }
                                        
                    @topk <- @prefilter {
                        statsby bytes:last_not_null(value), group_by(package)
                        statsby bytes:sum(bytes), group_by(package)
                        topk 14, max(bytes), group_by(package)
                    }
                                        
                    <- @prefilter {
                        leftjoin package=@topk.package, package:@topk.package
                        timechart duration_hr(24), bytes:last_not_null(value), group_by(package, dataset_id)
                    }
                                        
                                        
                                        
                    timechart options(empty_bins:true), 1d, A_bytes_sum:sum(bytes), group_by(^Package...)
                EOT
            },
            {
                id       = "stage-ctbzdrnn"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {
                            hour  = 227
                            kind  = 244
                            value = 158
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 6
                    inputList          = [
                        {
                            id          = "query-input-etjx1641"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Bytes Ingested (uncompressed)"
                    managers           = [
                        {
                            id                     = "dvh5ik8d"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "3jrz4cuf"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = false
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = ""
                                        unit      = "By"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "sum"
                                            fnArgs     = []
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_value_sum"
                                    }
                                    topK  = {
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-aq60qv3x"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-aka9xejq"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter metric=\"ingest_uncompressed_bytes\"",
                                " ",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                            visible          = false
                                                        }
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = ""
                                                            unit      = "By"
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            statsBy       = {
                                                                fn = "avg"
                                                            }
                                                            timechart     = {
                                                                fn         = "sum"
                                                                fnArgs     = []
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_value_sum"
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
                                                field                = "value"
                                                filterActions        = []
                                                groupBy              = []
                                                id                   = "datasetQueryExpression-v0yu17yg"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "sum"
                                                summaryFunctionArgs  = []
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_value_sum"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-howsdmqv"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-v0yu17yg",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-v7bxkaik"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_value_sum:sum(value), group_by()",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter metric="ingest_uncompressed_bytes"
                                         
                    timechart options(empty_bins:true), 1d, A_value_sum:sum(value), group_by()
                EOT
            },
            {
                id       = "stage-3sgj9bjl"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "user_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {
                            User    = 214
                            credits = 239
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 7
                    inputList          = [
                        {
                            id          = "query-input-ra2t58qe"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Query Credits by User"
                    managers           = [
                        {
                            id                     = "ptnshzpp"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "uhcb1eac"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
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
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-xc54mat7"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-6xovu0sm"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") and contains(kind, \"livemode\")=false and not is_null(user_id)",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(user_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin user_id=@topk.user_id, user_id:@topk.user_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(user_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Credits"
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
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "User"
                                                        srcFields = [
                                                            "user_id",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-qxvt6aec"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-m8pq3sip"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-qxvt6aec",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-7iwrmsdw"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^User...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") and contains(kind, "livemode")=false and not is_null(user_id)
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(user_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin user_id=@topk.user_id, user_id:@topk.user_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(user_id)
                    }
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^User...)
                EOT
            },
            {
                id       = "stage-sbc2j3lh"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 177
                            User         = 377
                            credits      = 113
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 8
                    inputList          = [
                        {
                            id          = "query-input-3syz5tch"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Query Credits by User"
                    managers           = [
                        {
                            id                     = "q8nrmrh8"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-5cmb2yrs"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-w8sxqk13"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter not is_null(user_id)",
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "statsby credits:round(sum(value), 2), group_by(user_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, user_id, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter not is_null(user_id)
                    filter contains(kind, "query") and contains(kind, "livemode")=false
                    statsby credits:round(sum(value), 2), group_by(user_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, user_id, @."% of total"
                EOT
            },
            {
                id       = "stage-v9bzbh8u"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {
                            query_time_range = 225
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 9
                    inputList          = [
                        {
                            id          = "query-input-c7nh34x6"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Query Credits by Time Range"
                    managers           = [
                        {
                            id                     = "pxjh9qx4"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "782kvlrh"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "sum"
                                            fnArgs     = []
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_credits_sum"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-u5re9ybe"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-g3ne4d70"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "",
                                "timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(query_time_range)",
                                " ",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Credits"
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            statsBy       = {
                                                                fn = "avg"
                                                            }
                                                            timechart     = {
                                                                fn         = "sum"
                                                                fnArgs     = []
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_credits_sum"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    "query_time_range",
                                                ]
                                                id                   = "datasetQueryExpression-oobw9792"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "sum"
                                                summaryFunctionArgs  = []
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_credits_sum"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-2pp9mpjr"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-oobw9792",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-zdx7fv8i"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_sum:sum(credits), group_by(query_time_range)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query") and contains(kind, "livemode")=false
                                        
                    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(query_time_range)
                                         
                    timechart options(empty_bins:true), 1d, A_credits_sum:sum(credits), group_by(query_time_range)
                EOT
            },
            {
                id       = "stage-lb2fue6i"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "1" = "_c_valid_from"
                            "2" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {
                            credits          = 159
                            query_time_range = 225
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 10
                    inputList          = [
                        {
                            id          = "query-input-xsz6yupa"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Query Credits by Time Range"
                    managers           = [
                        {
                            id                     = "pxjh9qx4"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindStats",
                            "ResultKindProgress",
                        ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-ht7ldzdh"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-a9f80yef"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "",
                                "statsby credits:round(sum(value), 2), group_by(query_time_range)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, query_time_range, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query") and contains(kind, "livemode")=false
                                        
                    statsby credits:round(sum(value), 2), group_by(query_time_range)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, query_time_range, @."% of total"
                EOT
            },
            {
                id       = "stage-3vs362zh"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "package"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 11
                    inputList          = [
                        {
                            id          = "query-input-sohlxy0y"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Query Credits by Package"
                    managers           = [
                        {
                            id                     = "wvla90vv"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "4y9u4cv4"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
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
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-myzfhymg"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-fwlfdsnx"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(package)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin package=@topk.package, package:@topk.package",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(package)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
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
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "Package"
                                                        srcFields = [
                                                            "package",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-tv82vpbw"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-vmj24hxv"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-tv82vpbw",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-x9z0aest"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Package...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") and contains(kind, "livemode")=false
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(package)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin package=@topk.package, package:@topk.package
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(package)
                    }
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Package...)
                EOT
            },
            {
                id       = "stage-0jiyfjc7"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 134
                            credits      = 184
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 12
                    inputList          = [
                        {
                            id          = "query-input-eli52u1b"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Query Credits by Package"
                    managers           = [
                        {
                            id                     = "e2zemed0"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-0eurhjjt"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-lffi3las"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "statsby credits:round(sum(value),2), group_by(package)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, package, @.\"% of total\" ",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query") and contains(kind, "livemode")=false
                    statsby credits:round(sum(value),2), group_by(package)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, package, @."% of total"
                EOT
            },
            {
                id       = "stage-nppe81mj"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "dataset_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 13
                    inputList          = [
                        {
                            id          = "query-input-jrnumsxv"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Query Credits by Dataset"
                    managers           = [
                        {
                            id                     = "rs3oqycm"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "9nzzrpeu"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            [
                                                "dataset_id",
                                            ],
                                        ]
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
                                        y             = "credits"
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
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-gut7pvx3"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-e1uckq4x"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(dataset_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADQCAYAAAA5+eykAAAAAXNSR0IArs4c6QAADk5JREFUeF7t3XtsVvUdx/Hf75zn1j60pVx6wcqWDeXipbCEuWjEhywaYqi6eRed6LbKnC4gMVs2l7WZiUZm6CYq4tQSp0bQBMbimHNrgZlZYINWBTsx0alAuWlp6eW5nN9ysF3Uiu0D5/xOf8/z5h//8Onv+zuv7/fTc85zqxT8QwABYwWksTtn4wggIAgwQ4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4OaxdQQIMDOAgMECBNjg5rF1BAgwM4CAwQIE2ODmsXUECDAzgIDBAgTY4Oax9RMLfLjloTpdPo4QzadfeGezrnqfrkOAg1Cnpu8Cm+se3eh7kYEC3SUTNl665OoGXfUIcBDS1NQqkH7wVqWroBKiPrz0SW1nfAKsq7PUCUyAAAdGT2EETl1AtVdrOwMLIevl1J2cgU+9bayAwCcCBJhJQMBgAQJscPPYOgLcAzMDCBgs8OxbV2m7B1ZK1C+Y/gL3wAbPC1sfZQLL/7Bph64tFU54a/Vt827jdWBd4NTJfYHfNG7TFmCpxPqlt8zmDJz7Y8UR6hJ4sHGbtktooUQ9AdbVWerkhcC+B7ZoDXDlTy/kDJwXk8VBahF465G/a7uELukKryfAWtpKkXwR2LBhg74zsBD1NTU1nIHzZbg4Tv8Fjq2dou0MvNeavfqMK5/jWWj/20qFfBFIrinXdgZWStZHr93PGThfhovj9F+AAPtvTAUEfBN45JfztX1Dxtho37ob7nmFS2jfusnCeSdQW1ur7RJaCFG/atUqLqHzbso4YN8ECLBvtCyMgP8CBNh/YyrkicBLy9cuPnKgYKaOw/3oo2jjnSsvbibAOrRPUENnw90t3Hjf/IUBHm7Ol972yPIVqYLe03Qc6LjiNzdNu/KZhseWXaXtSaySeHrddbevG71PYun+jt2KrTsSUohf6Wi4WyO09Em+XtdH7Kd+39J4zJbVPpb4/9L9Qh7/ZBDfyDFA8v6WhxLbt1Rpe4btg/+OqZtx7gczx8T2ztPRcLfGebf+QlstXcc0muq0Pf5KY1dh5qs69mRnrHXf+t7FDQR4QDu17AeJvf1lP9OB79aYFD1w/8ZplyfCGXm5rprzrpg/S1etfKzz/PKbV4wP7Z+i49i/MmncRvdtjQR4QPu53Vcljrx9ubYzcM/haXXTJuxPCI2X0DU1NVxC+5iue+9Z0DixpF/LGXjwfvThlnpt74WeFnlv9bdnPTk674GXPbUtYQmhLcCOEHU/KaxJSKm03QNHrukgwD4G+L03LmkcH+rUcg8cl/3r3e9ort38jL43cihRv+qiBdoy8ulWDTu4xwMsRZOP/f3M0o4Sc++afO3Mlv9M0HZfev6PtmqrpctxNNX54eZnm6RQ7lWV//8GwkSAB6j3LduSeH2co+0e+Jwj1v0Vl92ZEELfGVhObR32F5n/k5e7FQiwf70ddnA3bNiQqE4+qu3yoNL5d92Pyx5MCKnvZaRVcxYM6+BfC3J/5dV/vqOxyy7WcgndFj1rvXs5yxl48FnotRWJ1gPly3WNWXVZxxICrEtbT53kmnL3FkzLJfTgZ3MJ8EBvFy1alJj19UPazsC18/fU3Xbgbs7AerKlpUoQAV7x8s+1PQs9eNbXgvm5IsNeOqrdMxPbk2dqC/ATR2vqHMciwD5Nw+aX7l3cOX6flvcllxyu3Dnn0nsagghwEB/ob1r76xU+tW3IsomzX3xBTt/ZPGyAF215OuEoS9uz0JZ05v5279158TKS+wTh22dt0hImdwLcMB145eIVO94t0vK+5KP2xA+vvuWxO/IlwA2rW7Sd9VOOteTuW2aPLMBn9+7Wdg/8RsH0JUEE2H3DSk/TBdrC9P3blzTU1tbWFdoxLe84GxuOt9b97r6FOp8RVkI2Pz7nhrn5EmCd3wLSdrCqbuXKlcMHOLW2IqGU0nYGllLOdRyh/Qzc+cTCxenec2/WdQk0/o67ZtVueqauOrZHS4CL5bHWm775wEKdYRJCNEeu6cibAOv8BJT7XNGILqHzJcB/23Hr4p3txdre0LH0uoZ5/c9X1PXYhVoCfNgubZ3ynX8RYB9+Qw8+863z7ZuvJ7+2ZOWFN3EGdvvpvpXyr3/67uJip/sKH/r7hUued9nLCTfAGt8yqv1smG9n4JY/XqLtM8jf6G+rC1+9nwAPBlhzmI7/0tBckwD79Nt58Ays85lv91ZzSICVUtb21l3V0VhkhnLUBFvIVNKKrhvX8VxJNseeyigrUjy5VB17/3A2P+c+9kj59Z3uf7OtmXaKbVlUMtbWWNOOFoUzMh4Xffs/1nWcqqA0KpzCmOz/8LhTNv9c22xd3fUzBWVjwspRTt+hY9nUG+znydQUsYqxIdHbk+7rTGqrWTy51O491JVJ9aR11czETx+vug5+HLL6MtnUdHsZTiXtE76MtGbNGnvq1KmxkS5aXl4u9h3qnGFLeYayVFil5WElVaVtW5VhIV4rLS16taOjY6TLjehxbs0POjrOtkPx6ZYjC0Qoc0AKq1IJJyaF3FZWWrTd65qFhYV2X0qdJ5Qsdyxph6R1TDmZMqXERCsiXkj39Lw7os1n8SC3Zo8MnR9KpSpSjrSkpXqFIyYKKa2YHdrY13f0/SyWG+FD43FlZS4QllXq/oAlrH4rIiY6/alI0oo9HU51Hh3hQlk8LB4PRa2LMsoptaVMK6XspJMqtkS4Oyzs9en00a4sFhvRQ6UsKJdSVQsrUh4KOwf7U5mJSqjSkLA6CmPWi93d3VmHebjCoVC8UtjWrLSTniSVfFfa9gTpOJOkpdpjYesv2dQc9nXg4TbD/0cAgeAECHBw9lRG4JQFPhNg9x64ddeeaks55wvbiipHvRqxMntOuQoLIICA5wLhcPjE98Du/ceuXQcLPK/Kgggg4JkAl9CeUbIQAvoFCLB+cyoi4JnA5++B5fa2tjPj4fjMVEaU2xH5T6c/xD2wZ9wshIB3Aul0MnTCM3BTU1Ooqqqq0LtyrIQAAl4LcAnttSjrIaBRgABrxKYUAl4LfOE9cCxUNFtZmbJPXgcu5B7Ya3XWQ8ADgXA4NNzrwLt4HdgDaJZAwC8BLqH9kmVdBDQIEGANyJRAwC+BIffAO3fvniJl9ByZVlUhK/OaEGnugf3SZ10ETkEgEomc+B7YfR24gNeBT4GXH0XAfwEuof03pgICvgkQYN9oWRgB/wWG3ANvbW09Y0y4+Ny0TJ8mlHgtYzs+fF2L/wdGBQRyXSCd4nXgXO8xx5fjAlxC53iDObzcFiDAud1fji7HBb7wvdAhOzbHtq0i23H+wevAOT4BHJ6xAl/6OrD7nVjt7e18HtjY9rLxfBDgEjofuswx5qwAAc7Z1nJg+SAwJMCtra1lwiq4XoXFUSmcZica/SgfIDhGBEwTyCSH+U6syZMnx007KPaLQD4JcAmdT93mWHNOgADnXEs5oHwSGBLgrW++WVEgwzcJSx6OWpHmVMrK+m/f5hMgx4pAUAKRyDDvheZ14KBaQ10ERibAJfTInHgUAqNSgACPyrawKQRGJjAkwG1tbaVOuPBGIZ3umHCak8kk98Ajs+RRCGgVSKfTX/63kYqKeB1Ya0cohkCWAlxCZwnGwxEYTQIEeDR1g70gkKXAkAC3tOweHyu0b1SW02U79qaeUJp74CxReTgCOgRi4fCX/22kV/k8sI4+UAOBkxbgEvqk6fhBBIIXIMDB94AdIHDSAkMCvEYpe0b7O3NkRr7T3+/0hkKR9Emvzg8igIBvAun0MJ8HruJvI/mGz8IIeCHAJbQXiqyBQEACBDggeMoi4IUAAfZCkTUQCEiAAAcET1kEvBAgwF4osgYCAQkQ4IDgKYuAFwIE2AtF1kAgIAECHBA8ZRHwQoAAe6HIGggEJECAA4KnLAJeCBBgLxRZA4GABAhwQPCURcALAQLshSJrIBCQAAEOCJ6yCHghQIC9UGQNBAISIMABwVMWAS8ECLAXiqyBQEACBDggeMoi4IUAAfZCkTUQCEiAAAcET1kEvBAgwF4osgYCAQkQ4IDgKYuAFwIE2AtF1kAgIAECHBA8ZRHwQoAAe6HIGggEJECAA4KnLAJeCBBgLxRZA4GABAhwQPCURcALAQLshSJrIBCQAAEOCJ6yCHghQIC9UGQNBAISIMABwVMWAS8ECLAXiqyBQEACBDggeMoi4IUAAfZCkTUQCEiAAAcET1kEvBAgwF4osgYCAQkQ4IDgKYuAFwL/A961UjtBxN1jAAAAAElFTkSuQmCC"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") and contains(kind, "livemode")=false
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(dataset_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)
                    }
                EOT
            },
            {
                id       = "stage-u6ygy1aq"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 134
                            credits      = 184
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 14
                    inputList          = [
                        {
                            id          = "query-input-nad81o0f"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Query Credits by Dataset"
                    managers           = [
                        {
                            id                     = "e2zemed0"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-om611ryl"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-j1a5ovnr"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")=false",
                                "statsby credits:round(sum(value),2), group_by(dataset_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, dataset_id, @.\"% of total\" ",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query") and contains(kind, "livemode")=false
                    statsby credits:round(sum(value),2), group_by(dataset_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, dataset_id, @."% of total"
                EOT
            },
            {
                id       = "stage-a4h9nmet"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "package"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 15
                    inputList          = [
                        {
                            id          = "query-input-xvk9sfp5"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Acceleration Credits By Package"
                    managers           = [
                        {
                            id                     = "6gum14jk"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "8mqreuzd"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
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
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-xc5qp98n"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-mq3dir0z"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")=false",
                                "}",
                                "                                                        ",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(package)",
                                "    topk 14, max(credits)",
                                "}",
                                "                                                        ",
                                "<- @prefilter {",
                                "    leftjoin package=@topk.package, package:@topk.package",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(package)",
                                "}",
                                "",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Credits"
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
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    "package",
                                                ]
                                                id                   = "datasetQueryExpression-i3s7tlsw"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-k06nd06z"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-i3s7tlsw",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-huqg5nww"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(package)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADQCAYAAAA5+eykAAAAAXNSR0IArs4c6QAAD+lJREFUeF7tnW1wVNUZx8+59+7dJJIQIOGlhZrWYBIIklinM1LUTS2Dg1jbGQ0dHTCMtsgU26SSgepYN9NRw4hjZsiH0rFjLB3U+FJQsChjk/pSRkVMNISERBPF1kBQCMG87O69p3MxGZWYbDZmn7vnnj9f+qGbe57n9zy/PWfPvffIGf6BAAhIS4BLGzkCBwEQYBAYTQACEhOAwBIXD6GDAARGD4CAxAQgsMTFQ+ggAIHRAyAgMQEILHHxEDoIQGD0AAhITAACS1w8hA4CEBg9AAISE4DAEhcPoYMABEYPgIDEBCCwxMVD6CAAgdEDICAxAQgscfEQOghAYPQACEhMAAJLXDyEDgIQGD0AAhITgMASFw+hgwAERg+AgMQEILDExUPoIACB0QMgIDEBCCxx8RA6CEBg9AAISEwAAktcPIQOAhAYPQACEhOAwBIXD6GDAARGD4CAxAQgsMTFQ+ggAIHRAyAgMQEILHHxEDoIQGD0AAhITAACS1w8hA4CEBg9AAISE4DAEhcPoYMABEYPgIDEBCCwxMVD6CAAgdEDICAxAQgscfEQOghAYPQACEhMAAJLXDyEDgIQGD0AAhITgMASFw+hgwAERg+AgMQEILDExUPoIACB0QMgIDEBCCxx8RA6CEBg9AAISEwAAktcPIQOAhAYPQACEhOAwBIXD6GDAARGD4CAxAQgsMTFQ+ggAIHRAyAgMQEILHHxEDoIQGD0AAhITAACS1w8hA4CEBg9AAISE4DAEhcPoYMABEYPgIDEBCCwxMVD6CAAgdEDICAxAQgscfEQOghAYPQACEhMAAJLXDyEDgIQGD0AAhITgMASFw+hgwAERg+AgMQEILDExUPoIACB0QMgIDEBCCxx8RA6CEBg9AAISEwAAktcPIQOAhAYPQACEhOAwBIXD6GDAARGD4CAxAQgsMTFQ+ggAIHRAyAgMQEILHHxEDoIQGD0AAhITAACS1w8hA4CEBg9AAISE4DAEhcPoY9O4Pe/CZZS8am9bKDh47WV9VTjfXUcCOwGdYwZdwL7Xsx7J+6DDA2gG4O7l139QZBqPAjsBmmFxyx56obSi97LzKZAcFvtD56e01Jef2zTK4JivHNjcFExr/IqCEwGPEEGcpZ5/Wkzr6EIZ2F3eteGR24qoRjr/DFe+vMd1Z+HdRKBe6e27VuzZm9V6y0aocCsIqfGhsBuNJebYwaDweC0Gceup4jBNPoa169/3BWB37/5lmphniARmE/J2XfRtqqq5pxcMoEFZxULW1ogMEUjJ9IY++7eWZoifD+niClVJHcWPrDSFYGbc3LrGGMBijyHZYLAFLQVH6Nl+fRSYVokArOe5M68V7qUEXjH8gDZJtaMs/2PrXj9jSo32hm70G5QHxrzcG5ukAt2L1EI9QtaW4qIxvraMAcKC2r6fEYWxdiDPn2XI9PW4mvpltCMV5TX7sESmqLAiTSGKgLvWBOoORM2F1Ow77PM3Y5MEJiCtuJjPFi8MsiZoJmBBavf+NReV2ZgcW9qHWOc5Dcw46yCB88Exb1pZDPw8JhutDOW0G5QHxoTAscBPgSOA1Rc8hsJvLz+0tKW0xm3UOBJ84UaV/+t3pVNLMzA8avwuGbg0nueI3uu9ImfzGvoKip05bnS+GH+5iuLYFqQkW1iiXpe0evKEtp6IL1GiwiS38DMEruxhP5Kv+3fnx3w/+eSzVTNPbjk3cply9oh8KQDd0/gUO0suvvAglf4V3XhN/Bw/xzb/GpgQAw+POn9NMoFk7i/bF7lFUoIPPjk7CDnRJtYjNWbxcddmYEhcPzsibqEPlJiBJp8d5Hd4+rSrwjetyojfhl/w5XdWrJD4MkvsxiagSMPTSObBLiP79J/+1liPsix7fb9AS40ZwlE8k9wu2jqkqqC1iRO8pC/k9R9xXvIxvoqRAg8+S01LHCodhbZbaThMSc/m+hXjDoDOwKb4T6yJXTIl1I2f0Z3AdUzwg6iK++/keYe5Xn1gMDRGzTWT0Dg84gdyc0NCMHIZmDOWVHb0mUFZtLlZLPiNdU3kY2l4gx84aY9ZJtYnIuKzsrrgpiBhzrtwV+uDMw+dZZsBu6aNqUsKb0sQPiMMNuw/eqoK5FYZ4LxfD5r8/NBITjNk1iM1X+4ZaUrm1gQeDzdMLHPRG1cR2BuC7IZWGi8KKe3sGDAn0bzlg5jrPjZcleW0BB4Yk071l9hBj6PjhsCr2hoJ52BF7S28KZfry7dP98iW0qXle+8BgJD4G9LIOoMLILpASZsshmYca3on/tzCvxhovdkGWNXv3kwcGzzv4MDIkxyOoZTtPlbflqoisDZ991PdkuHGb272jc9ULV7+wqyMU+Gp+66dcPjiXkbyQ2BGbMD7b3T6WR6qLNw2+0vB037DNmY6/7yC1cELi8NVqdNPfndb/vNP56///j7vf/dXvLYhvyafLJNLCZYRdPapuCFm/aQ3UYaXraPh8lkfyYhZ2BHYLpnhBnjFWe4IzD1xpkbM3DdnX+sNq1PSM6n6ok0dK2ofqsEAk+2tl9eDwI7p4IqJDDl+VSMsXOngKgi8JE7yqvjp+rXr/zxz/7xtPPOAAQeEpj4dAzmbJxlb/lDaaSnkOR1Qm6eauwIrivZeuO1dYzTHDDHhg4RUEVgyqNsba4V5dVExiewlcrJnoUW3/MHjcN95Eto0pfrGWMba/fy/Efzg4zTnYnVVNJU1Fh6cU2KHiJ5ta/PMhsXVx1VZgmdkAKHn5odEILuPjDnvEj7JFSg9VgkM5OzMOH39BTSvpv7xbLdDYFJX65nX7zC6MYMnHVXLdmplMxO3u08/dV6s49sTNsnysY1A7shsG2zAOFrdswsPs4hcDx+vbkncH5NPtku9PDOd8PChWQC+y2rLK+lJfoSGgLHo7Hdm4Ej2zNrhE5zOga3eKOxrtuVJbQbApOehKnxovIn9oxP4Bc+u5TsN/DvOtYHWwt/RT4DO28Gab0RsvvAvttOFrqxhKZ8ud7ZhXYOEXBjCQ2BhyaerM3PB4TgZE9icS6K7pm7syDD10P2LPT1614IEL/ad27ZDoHjsLoZepADArsosPPf0SF8S4d9uGUlV0XgzVs31nSH0kl2oTPN042VG7cqs4RuuzOL7DdwdurpMh48HX0J7cYM7IbAxE9FnfvScGMGpny1z1lCO68wqrKEpj1MXiuCwEOrDEcmCByH5axqAv9pKtkMzCyOGXi4ZVUS+OKHb63hvl6SJbQIpzYeLfurMktoylNAnOclfDd2YQntSKySwKTLWcbqnae/SMd0cRPr+M5sshl4uu9s2bgFNlLfI7uNlPSdncGBE9cVsEgq2S50+913BSifS3a+NDrvL3blNhKpTIoJTPwKY1Fn5XXRZ+D8R/MDjNMdascEc85tcsakOiuKNZU0UW8ouTEm/WwIgeOysXDu8V8uIPAwXQgctz6j/9JwcQk90ZNHOOdMiNie/HRWqk1rm8aegd870hZYlDe/vuDRgvRYSpxsJWs35NycsaP9kROx/J3z2Ya1Daed/411zHn+PCMw77LpO9p3kI2ZNz3Pv2BK4ZRnPtr5KVWeS7KWJM38fF7Kru4nP5vImLFydcZYPmN5muE3xN7/7e2lGnPVvFXTWwdb+xpONAzEMuZE+8cZY03WmoxXT716pqOnIxTLmMN9OxG2q7Nvm/la98ufdvR0WLGMOZzn194HFkLwQ4eaFvmTkwsYFxlhW/xr0OQfjOfCRo/GfWlWrhbm8y1d+LjFPxVWZI7uM2ZrnL/Rf5YfiEy1Y/uaiTKwM6ZmhhYw3cwzhJ1sc6tb143ZEWYnaZZ9MNzve3uyx0zpN3XNF/oRE3xWRHBd56JP4yzTsqxMbohnPtf1zvHwiuUzzpjsAnE5HwjPjgim6QbrFzbL5Jxpus1e7DXZsViuN57PpoXDF4RtY4nN+DRNY0xj+iD3icxIKGJyU/t7P2NnxnOdWD7jjGkz8yoh7HTOjQgXET3E7TSN6WeTdPu5U5oW8xdItPFTQ0kzhehfzDR9FtfskxHbzohYfJrB+XGDJz3baw5Eol0j1v8/uU+fo/vsQpuJOZzxTs5ZBmd8DtfEURHxvxTLmGO+0N/W1pYZCoVi+maINRl8HgRAYGIETNPUo57IMbFL469AAAQoCEBgCsoYAwTiRAACxwksLgsCFARGbGI1NbUuYrrvx4LbybotXtd1e9I3SCgSwxgg4HUC4bAx+m/g2lqh5+QcT/I6BOQHAjITwBJa5uohduUJQGDlWwAAZCYAgWWuHmJXnsD5m1jam+8cXpSSlHIJZ9YMzdAPMYN9qDwlAACBRCQwwNioM7DzWGUixoyYQAAEviQASdENICAxAQgscfEQOgiMtYTWm5ubdSACARBIXAIjNrHeOXx0kY8blwvNThGa/tZgyJ701+MSFwciAwF5CFygOUcB4B8IgIC0BCCwtKVD4CAwxm0kwAEBEEh8AtE2sZITPwVECALqEhixiXWwsXlxst9/CRNimiXEAVNLaVcXDzIHgcQl4PON8Tph4oaNyEAABIYJYBMLvQACEhOAwBIXD6GDwIjfwI3N7Ys1YS9huubXNf01luLDb2D0CQgkIAHTGOM3sBBCb21tTUnAuBESCIDAEAEsodEKICAxAQgscfEQOghAYPQACEhMYMS50G82Ns5P8qf+UBf2LK7rb5ua1SFxfggdBDxLIBQKadEepcT7wJ4tPxLzAgEsob1QReSgLAEIrGzpkbgXCIy1hNbq6+s1LySJHEDAqwRGbGIdfPfdiw096Upd11J1TX+L+9hHXk0eeYGAzAT4II7Ukbl+iB0ERj/YHWxAAAQSnwA2sRK/RogQBEYlMKrAtbW1+tKlS/1gBwIgkLgERgh86NChTCM5dTXn7DTTfAfCttaTuOEjMhBQl0DE6rWxhFa3/sjcAwQgsAeKiBTUJQCB1a09MvcAgREC1wqhL2h9/0pu8fcHB+1+wzAjHsgTKYCA5whEIiFj1Bm4rq7OmDt3Lo7U8VzZkZCXCGAJ7aVqIhflCEBg5UqOhL1EAAJ7qZrIRTkCEFi5kiNhLxGAwF6qJnJRjgAEVq7kSNhLBCCwl6qJXJQjAIGVKzkS9hIBCOylaiIX5QhAYOVKjoS9RAACe6mayEU5AhBYuZIjYS8RgMBeqiZyUY4ABFau5EjYSwQgsJeqiVyUIwCBlSs5EvYSAQjspWoiF+UIQGDlSo6EvUQAAnupmshFOQIQWLmSI2EvEYDAXqomclGOAARWruRI2EsEILCXqolclCMAgZUrORL2EgEI7KVqIhflCEBg5UqOhL1EAAJ7qZrIRTkCEFi5kiNhLxGAwF6qJnJRjgAEVq7kSNhLBCCwl6qJXJQjAIGVKzkS9hIBCOylaiIX5QhAYOVKjoS9RAACe6mayEU5AhBYuZIjYS8RgMBeqiZyUY4ABFau5EjYSwT+DwpZnnl21j7WAAAAAElFTkSuQmCC"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter starts_with(kind, "acceleration") and contains(kind, "livemode")=false
                    }
                                                                                                
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(package)
                        topk 14, max(credits)
                    }
                                                                                                
                    <- @prefilter {
                        leftjoin package=@topk.package, package:@topk.package
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(package)
                    }
                                        
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(package)
                EOT
            },
            {
                id       = "stage-2fv1tl6y"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 133
                            Package      = 332
                            credits      = 115
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 16
                    inputList          = [
                        {
                            id          = "query-input-dl8xzxzp"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Acceleration Credits by Package"
                    managers           = [
                        {
                            id                     = "p8jbr35l"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        resultKinds         = [
                            "ResultKindSchema",
                            "ResultKindData",
                            "ResultKindStats",
                            "ResultKindProgress",
                        ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-r7oq1ycd"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-s7s5lnso"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")=false",
                                "statsby credits:round(sum(value), 2), groupby(package)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, package, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter starts_with(kind, "acceleration") and contains(kind, "livemode")=false
                    statsby credits:round(sum(value), 2), groupby(package)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, package, @."% of total"
                EOT
            },
            {
                id       = "stage-1cu3u3fp"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                    {
                        datasetId   = "42962984"
                        datasetPath = null
                        inputName   = "Datasets"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "dataset_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 17
                    inputList          = [
                        {
                            id          = "query-input-p6gtf8vk"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                        {
                            datasetId   = "42962984"
                            id          = "query-input-68kmzhh5"
                            inputName   = "Datasets"
                            inputRole   = "Data"
                            isUserInput = true
                        },
                    ]
                    label              = "Daily Acceleration Credits by Dataset"
                    managers           = [
                        {
                            id                     = "gbaje9ek"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "ehfdh34e"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
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
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-tc35z3ir"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-ak7qb53w"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")=false",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(dataset_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
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
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "Dataset"
                                                        srcFields = [
                                                            "dataset_id",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-9nm8sgov"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-35m5jqn0"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-9nm8sgov",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-2d1rqyp8"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Dataset...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter starts_with(kind, "acceleration") and contains(kind, "livemode")=false
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(dataset_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)
                    }
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Dataset...)
                EOT
            },
            {
                id       = "stage-1x0kezif"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 198
                            Dataset      = 334
                            credits      = 130
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 18
                    inputList          = [
                        {
                            id          = "query-input-khk0kkue"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Acceleration Credits by Dataset"
                    managers           = [
                        {
                            id                     = "hg0br6my"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-xr7p3h1l"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-nvxljqk9"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")=false",
                                "statsby credits:round(sum(value),2), group_by(dataset_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, dataset_id, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter starts_with(kind, "acceleration") and contains(kind, "livemode")=false
                    statsby credits:round(sum(value),2), group_by(dataset_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, dataset_id, @."% of total"
                EOT
            },
            {
                id       = "stage-oqq0944n"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "monitor_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 19
                    inputList          = [
                        {
                            id          = "query-input-is2e34gr"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Monitor Credits by Monitor"
                    managers           = [
                        {
                            id                     = "cq0kc1v9"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "17slmwxk"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
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
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-w0ucpinp"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-a8bloacv"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter metric=\"credits_monitor\" and not is_null(monitor_id)",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(monitor_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin monitor_id=@topk.monitor_id, monitor_id:@topk.monitor_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(monitor_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            axisLabel = "Credits"
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
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "Monitor"
                                                        srcFields = [
                                                            "monitor_id",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-tksd4t66"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-btjbl1q8"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-tksd4t66",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-155du500"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Monitor...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter metric="credits_monitor" and not is_null(monitor_id)
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(monitor_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin monitor_id=@topk.monitor_id, monitor_id:@topk.monitor_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(monitor_id)
                    }
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Monitor...)
                EOT
            },
            {
                id       = "stage-gcniv4np"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 138
                            Monitor      = 343
                            credits      = 149
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 20
                    inputList          = [
                        {
                            id          = "query-input-xfnufdr5"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Monitor Credits by Monitor"
                    managers           = [
                        {
                            id                     = "eq7kmnni"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-rlrnbid1"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-6jrj2drm"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter metric=\"credits_monitor\" and not is_null(monitor_id)",
                                "",
                                "statsby credits:round(sum(value), 2), group_by(monitor_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, monitor_id, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter metric="credits_monitor" and not is_null(monitor_id)
                                        
                    statsby credits:round(sum(value), 2), group_by(monitor_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, monitor_id, @."% of total"
                EOT
            },
            {
                id       = "stage-l4t3tbe4"
                input    = [
                    {
                        datasetId   = "42962931"
                        datasetPath = null
                        inputName   = "System_41026705"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    appearance         = "COLLAPSED"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            limit_per_day_occ = 265
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 0
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 21
                    inputList          = [
                        {
                            datasetId   = "42962931"
                            id          = "query-input-ye3ph9on"
                            inputName   = "System_41026705"
                            inputRole   = "Data"
                            isUserInput = false
                        },
                    ]
                    label              = "Query Credit Manager"
                    managers           = [
                        {
                            id                     = "pzyinodx"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "System_41026705"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-0w2p94za"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-1l9pyeag"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "make_col schema:string(EXTRA.schema)",
                                "filter starts_with(schema, \"governor\")",
                                "make_col remaining_token_bucket_credits:float64(FIELDS.remaining_token_bucket_credits),",
                                "    total_token_bucket_credits:float64(FIELDS.total_token_bucket_credits),",
                                "    enforced:bool(FIELDS.enforced),",
                                "    credits_per_day:float64(FIELDS.credits_per_day),",
                                "    at_soft_limit:bool(FIELDS.at_soft_limit),",
                                "    at_hard_limit:bool(FIELDS.at_hard_limit),",
                                "    type:split(schema, \"_\")[1],",
                                "    limit_per_day_occ:int64(FIELDS.limit_per_day_occ)",
                                "    ",
                                "make_col credits_per_day: coalesce(credits_per_day, limit_per_day_occ), ",
                                "\tenforced: if(is_null(enforced), true, enforced), ",
                                "    type: if(type=\"transform\", \"acceleration\", type)",
                                "",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col schema:string(EXTRA.schema)
                    filter starts_with(schema, "governor")
                    make_col remaining_token_bucket_credits:float64(FIELDS.remaining_token_bucket_credits),
                        total_token_bucket_credits:float64(FIELDS.total_token_bucket_credits),
                        enforced:bool(FIELDS.enforced),
                        credits_per_day:float64(FIELDS.credits_per_day),
                        at_soft_limit:bool(FIELDS.at_soft_limit),
                        at_hard_limit:bool(FIELDS.at_hard_limit),
                        type:split(schema, "_")[1],
                        limit_per_day_occ:int64(FIELDS.limit_per_day_occ)
                                            
                    make_col credits_per_day: coalesce(credits_per_day, limit_per_day_occ), 
                    	enforced: if(is_null(enforced), true, enforced), 
                        type: if(type="transform", "acceleration", type)
                EOT
            },
            {
                id       = "stage-ptjq1sko"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Governor_-l4t3"
                        inputRole   = "Data"
                        stageId     = "stage-l4t3tbe4"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "Credits Per Day" = 578
                            Enforced          = 114
                            Type              = 123
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 0
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 22
                    inputList          = [
                        {
                            id          = "query-input-a4hun2bd"
                            inputName   = "Governor_-l4t3"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-l4t3tbe4"
                        },
                    ]
                    label              = "Credit Manager - Configured Limits"
                    managers           = [
                        {
                            id                     = "f1j4l7na"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
                    queryPresentation  = {
                        initialRollupFilter = {
                            mode = "Last"
                        }
                        rollup              = {}
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Governor_-l4t3"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-olhb0qwj"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-2az2b7ym"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "statsby credits_per_day:last(credits_per_day), enforced:last(enforced), group_by(type)",
                                "pick_col",
                                "    \"Type\":type,",
                                "    \"Credits Per Day\":case(type=\"query\", credits_per_day/3.6e14, type=\"acceleration\", credits_per_day),",
                                "    \"Enforced\":enforced ",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    statsby credits_per_day:last(credits_per_day), enforced:last(enforced), group_by(type)
                    pick_col
                        "Type":type,
                        "Credits Per Day":case(type="query", credits_per_day/3.6e14, type="acceleration", credits_per_day),
                        "Enforced":enforced
                EOT
            },
            {
                id       = "stage-pmpxsxwl"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Governor_-l4t3"
                        inputRole   = "Data"
                        stageId     = "stage-l4t3tbe4"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 0
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 23
                    inputList          = [
                        {
                            id          = "query-input-47u0kh8c"
                            inputName   = "Governor_-l4t3"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-l4t3tbe4"
                        },
                    ]
                    label              = "Query Manager - Consumed Quota"
                    managers           = [
                        {
                            id                     = "eizfj9y2"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "lzyca4i6"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color         = "Default"
                                    hideGridLines = false
                                    legend        = {
                                        placement        = "top"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "table"
                                        visible          = true
                                    }
                                    type          = "xy"
                                    xConfig       = {
                                        visible = true
                                    }
                                    yConfig       = {
                                        axisLabel = "%"
                                        bounds    = {
                                            start = 0
                                        }
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            "group",
                                        ]
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
                                        y             = "A_value_avg"
                                    }
                                    topK  = {
                                        k     = 100
                                        order = "Top"
                                        type  = "Auto"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        sort                = [
                            {
                                ascending  = false
                                columnName = "timestamp"
                            },
                        ]
                        wantBuckets         = 400
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Governor_-l4t3"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-cpzmk02t"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-ksn1oml9"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "make_col query_quota_usage:100-remaining_token_bucket_credits/total_token_bucket_credits*100",
                                "pick_col timestamp:BUNDLE_TIMESTAMP, query_quota_usage",
                                "make_col object:make_object(query_quota_usage:query_quota_usage, soft_limit:80, hard_limit:100)",
                                "flatten_single object",
                                "pick_col timestamp, group:string(_c_object_path), value:float64(_c_object_value)",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
                                        expressions           = [
                                            {
                                                autoResolution       = true
                                                dataVis              = {
                                                    config = {
                                                        color         = "Default"
                                                        hideGridLines = false
                                                        legend        = {
                                                            placement        = "top"
                                                            showNullAsOption = "Custom"
                                                            showNullAsString = "Other"
                                                            type             = "table"
                                                            visible          = true
                                                        }
                                                        type          = "xy"
                                                        xConfig       = {
                                                            visible = true
                                                        }
                                                        yConfig       = {
                                                            axisLabel = "%"
                                                            bounds    = {
                                                                start = 0
                                                            }
                                                            visible   = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = [
                                                                "group",
                                                            ]
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
                                                            y             = "A_value_avg"
                                                        }
                                                        topK  = {
                                                            order = "Top"
                                                            type  = "Auto"
                                                        }
                                                        type  = "table"
                                                    }
                                                    type   = "timeseries"
                                                }
                                                expressionIdentifier = "A"
                                                field                = "value"
                                                filterActions        = []
                                                groupBy              = [
                                                    "group",
                                                ]
                                                id                   = "datasetQueryExpression-rl5m24q8"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "avg"
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_value_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-1w2lg5ui"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-rl5m24q8",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-2p3v1gft"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), A_value_avg:avg(value), group_by(group)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    make_col query_quota_usage:100-remaining_token_bucket_credits/total_token_bucket_credits*100
                    pick_col timestamp:BUNDLE_TIMESTAMP, query_quota_usage
                    make_col object:make_object(query_quota_usage:query_quota_usage, soft_limit:80, hard_limit:100)
                    flatten_single object
                    pick_col timestamp, group:string(_c_object_path), value:float64(_c_object_value)
                    timechart options(empty_bins:true), A_value_avg:avg(value), group_by(group)
                EOT
            },
            {
                id       = "stage-qqu5lksl"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 24
                    inputList          = [
                        {
                            id          = "query-input-8ffzxw6k"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Query Manager - Daily Allowed vs. Bypassed Queries"
                    managers           = [
                        {
                            id                     = "g7p9jyx9"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "dvlbiqml"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color         = "Default"
                                    hideGridLines = false
                                    legend        = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type          = "xy"
                                    xConfig       = {
                                        visible = true
                                    }
                                    yConfig       = {
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            "query_rate_limit_status",
                                        ]
                                        statsBy       = {
                                            fn = "avg"
                                        }
                                        timechart     = {
                                            fn         = "sum"
                                            fnArgs     = []
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_count_value_sum"
                                    }
                                    topK  = {
                                        k     = 100
                                        order = "Top"
                                        type  = "Auto"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-i2s91sqo"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-lp13x4ot"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\")",
                                "",
                                "timechart duration_hr(24), count(value), group_by(query_rate_limit_status)",
                                "",
                                "make_col query_rate_limit_status1:string(if(query_rate_limit_status=\"\",\"Allowed\",query_rate_limit_status))",
                                "",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
                                        expressions           = [
                                            {
                                                autoResolution       = false
                                                dataVis              = {
                                                    config = {
                                                        color         = "Default"
                                                        hideGridLines = false
                                                        legend        = {
                                                            placement        = "right"
                                                            showNullAsOption = "Custom"
                                                            showNullAsString = "Other"
                                                            type             = "list"
                                                            visible          = true
                                                        }
                                                        type          = "xy"
                                                        xConfig       = {
                                                            visible = true
                                                        }
                                                        yConfig       = {
                                                            visible = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = [
                                                                "query_rate_limit_status",
                                                            ]
                                                            statsBy       = {
                                                                fn = "avg"
                                                            }
                                                            timechart     = {
                                                                fn         = "sum"
                                                                fnArgs     = []
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_count_value_sum"
                                                        }
                                                        topK  = {
                                                            order = "Top"
                                                            type  = "Auto"
                                                        }
                                                        type  = "table"
                                                    }
                                                    type   = "timeseries"
                                                }
                                                expressionIdentifier = "A"
                                                field                = "count_value"
                                                filterActions        = []
                                                groupBy              = [
                                                    "query_rate_limit_status",
                                                ]
                                                id                   = "datasetQueryExpression-f7tmbn5r"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "sum"
                                                summaryFunctionArgs  = []
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_count_value_sum"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-0st7xvlv"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-f7tmbn5r",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-5c871u2e"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_count_value_sum:sum(count_value), group_by(query_rate_limit_status)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query")
                                        
                    timechart duration_hr(24), count(value), group_by(query_rate_limit_status)
                                        
                    make_col query_rate_limit_status1:string(if(query_rate_limit_status="","Allowed",query_rate_limit_status))
                                        
                    timechart options(empty_bins:true), 1d, A_count_value_sum:sum(count_value), group_by(query_rate_limit_status)
                EOT
            },
            {
                id       = "stage-05h8r8hu"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 25
                    inputList          = [
                        {
                            id          = "query-input-rud0yqmf"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Query Manager - User Bypassed Queries"
                    managers           = [
                        {
                            id                     = "9lbirf3r"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "bz61l6w9"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    color         = "Default"
                                    hideGridLines = false
                                    legend        = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type          = "xy"
                                    xConfig       = {
                                        visible = true
                                    }
                                    yConfig       = {
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            [
                                                "user_id",
                                            ],
                                        ]
                                        statsBy       = {
                                            fn = "count"
                                        }
                                        timechart     = {
                                            fn         = "count"
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_user_id_count"
                                    }
                                    topK  = {
                                        k     = 100
                                        order = "Top"
                                        type  = "Auto"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-dvs2pkcj"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-pwrxna5r"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") AND query_rate_limit_status=\"user_bypassed_rate_limit\"",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby bypassed:count(), group_by(user_id)",
                                "    topk 14",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin user_id=@topk.user_id, user_id:@topk.user_id",
                                "}",
                                "",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
                                        expressions           = [
                                            {
                                                autoResolution       = false
                                                dataVis              = {
                                                    config = {
                                                        color         = "Default"
                                                        hideGridLines = false
                                                        legend        = {
                                                            placement        = "right"
                                                            showNullAsOption = "Custom"
                                                            showNullAsString = "Other"
                                                            type             = "list"
                                                            visible          = true
                                                        }
                                                        type          = "xy"
                                                        xConfig       = {
                                                            visible = true
                                                        }
                                                        yConfig       = {
                                                            visible = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = [
                                                                [
                                                                    "user_id",
                                                                ],
                                                            ]
                                                            statsBy       = {
                                                                fn = "count"
                                                            }
                                                            timechart     = {
                                                                fn         = "count"
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_user_id_count"
                                                        }
                                                        topK  = {
                                                            order = "Top"
                                                            type  = "Auto"
                                                        }
                                                        type  = "table"
                                                    }
                                                    type   = "timeseries"
                                                }
                                                expressionIdentifier = "A"
                                                field                = {
                                                    label     = "user_id"
                                                    srcFields = [
                                                        "user_id",
                                                    ]
                                                }
                                                filterActions        = []
                                                groupBy              = [
                                                    [
                                                        "user_id",
                                                    ],
                                                ]
                                                id                   = "datasetQueryExpression-5hcsh81j"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "count"
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_user_id_count"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-kyo02ceu"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-5hcsh81j",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-nyzichd2"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_user_id_count:count(user_id), group_by(user_id)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") AND query_rate_limit_status="user_bypassed_rate_limit"
                    }
                                        
                    @topk <- @prefilter {
                        statsby bypassed:count(), group_by(user_id)
                        topk 14
                    }
                                        
                    <- @prefilter {
                        leftjoin user_id=@topk.user_id, user_id:@topk.user_id
                    }
                                        
                    timechart options(empty_bins:true), 1d, A_user_id_count:count(user_id), group_by(user_id)
                EOT
            },
            {
                id       = "stage-vxx6oncs"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 26
                    inputList          = [
                        {
                            id          = "query-input-la6jmj08"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Acceleration Manager - Dataset Bypassed Queries"
                    managers           = [
                        {
                            id                     = "ee7dqr3m"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "8rp0nvsr"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        visible = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            [
                                                "dataset_id",
                                            ],
                                        ]
                                        statsBy       = {
                                            fn = "count"
                                        }
                                        timechart     = {
                                            fn         = "count"
                                            fnArgs     = null
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_dataset_id_count"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-zio39zuf"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-jtts8xzm"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") AND query_rate_limit_status=\"dataset_bypassed_rate_limit\"",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby bypassed:count(), group_by(dataset_id)",
                                "    topk 14",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id",
                                "}",
                                "",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
                                                            visible = true
                                                        }
                                                    }
                                                    source = {
                                                        table = {
                                                            groupFields   = [
                                                                [
                                                                    "dataset_id",
                                                                ],
                                                            ]
                                                            statsBy       = {
                                                                fn = "count"
                                                            }
                                                            timechart     = {
                                                                fn         = "count"
                                                                fnArgs     = null
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_dataset_id_count"
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
                                                field                = {
                                                    label     = "dataset_id"
                                                    srcFields = [
                                                        "dataset_id",
                                                    ]
                                                }
                                                filterActions        = []
                                                groupBy              = [
                                                    [
                                                        "dataset_id",
                                                    ],
                                                ]
                                                id                   = "datasetQueryExpression-xgtwlzdg"
                                                inputSource          = "parentStageInputSource"
                                                lookupActions        = []
                                                resolutionDuration   = {
                                                    num  = 1
                                                    unit = "day"
                                                }
                                                summarizeVerb        = "statsby"
                                                summaryFunction      = "count"
                                                summaryFunctionArgs  = null
                                                summaryMode          = "over-time"
                                                type                 = "datasetQueryExpression"
                                                valueColumnId        = "A_dataset_id_count"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-wcl1c6si"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-xgtwlzdg",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-iir74vuf"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_dataset_id_count:count(dataset_id), group_by(dataset_id)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") AND query_rate_limit_status="dataset_bypassed_rate_limit"
                    }
                                        
                    @topk <- @prefilter {
                        statsby bypassed:count(), group_by(dataset_id)
                        topk 14
                    }
                                        
                    <- @prefilter {
                        leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id
                    }
                                        
                    timechart options(empty_bins:true), 1d, A_dataset_id_count:count(dataset_id), group_by(dataset_id)
                EOT
            },
            {
                id       = "stage-7k2pqzjd"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                    {
                        datasetId   = "42962984"
                        datasetPath = null
                        inputName   = "Datasets"
                        inputRole   = "Data"
                        stageId     = null
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "dataset_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 27
                    inputList          = [
                        {
                            id          = "query-input-wabhp3ai"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                        {
                            datasetId   = "42962984"
                            id          = "query-input-8n4la9lu"
                            inputName   = "Datasets"
                            inputRole   = "Data"
                            isUserInput = true
                        },
                    ]
                    label              = "Daily Acceleration Ongoing Live Mode Credits by Dataset"
                    managers           = [
                        {
                            id                     = "ixzoim0h"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "9dlfdqcr"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
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
                                            resolution = 86400000
                                        }
                                        transformType = "none"
                                        type          = "xy"
                                        x             = "_c_valid_from"
                                        y             = "A_credits_avg"
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
                        resultKinds         = [
                            "ResultKindSchema",
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-x0mau5vb"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-ck8uupnb"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(dataset_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                        {
                            action         = {
                                params  = {
                                    expressionList = {
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
                                                        type                = "bar"
                                                        xAxisLabelPlacement = "horizontal"
                                                        xConfig             = {
                                                            visible = true
                                                        }
                                                        yConfig             = {
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
                                                                resolution = 86400000
                                                            }
                                                            transformType = "none"
                                                            type          = "xy"
                                                            x             = "_c_valid_from"
                                                            y             = "A_credits_avg"
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
                                                field                = "credits"
                                                filterActions        = []
                                                groupBy              = [
                                                    {
                                                        label     = "Dataset"
                                                        srcFields = [
                                                            "dataset_id",
                                                        ]
                                                    },
                                                ]
                                                id                   = "datasetQueryExpression-9nm8sgov"
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
                                                valueColumnId        = "A_credits_avg"
                                                viewTab              = "visualize"
                                            },
                                        ]
                                        multiExpression       = {
                                            expressionIdentifier = "A"
                                            filterActions        = []
                                            id                   = "multiExpression-35m5jqn0"
                                            lookupActions        = []
                                            type                 = "multiExpression"
                                            viewTab              = "visualize"
                                        }
                                        selectedExpressionIds = [
                                            "datasetQueryExpression-9nm8sgov",
                                        ]
                                    }
                                }
                                summary = null
                                type    = "ExpressionBuilder"
                            }
                            customSummary  = "Expression Builder"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-lknpaixw"
                            index          = 2
                            isPinned       = false
                            opal           = [
                                "timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Dataset...)",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "Builder"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter starts_with(kind, "acceleration") and contains(kind, "livemode")
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(dataset_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)
                    }
                    timechart options(empty_bins:true), 1d, A_credits_avg:avg(credits), group_by(^Dataset...)
                EOT
            },
            {
                id       = "stage-mxuscrc2"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 195
                            Dataset      = 334
                            credits      = 130
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 28
                    inputList          = [
                        {
                            id          = "query-input-qkyix0qh"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Acceleration Ongoing Live Mode Credits by Dataset"
                    managers           = [
                        {
                            id                     = "whtf15sj"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-xrdyge8r"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-vkbl1lcp"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter starts_with(kind, \"acceleration\") and contains(kind, \"livemode\")",
                                "statsby credits:round(sum(value),2), group_by(dataset_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, dataset_id, @.\"% of total\"",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADQCAYAAAA5+eykAAAAAXNSR0IArs4c6QAABQZJREFUeF7t0wENAAAIAkHpX9ocv50J2CE7R4BAVmDZ5IITIHAG7AkIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzoBA/YDBMICBhwuT3QCBuwHCIQFDDhcnugEDNgPEAgLGHC4PNEJGLAfIBAWMOBweaITMGA/QCAsYMDh8kQnYMB+gEBYwIDD5YlOwID9AIGwgAGHyxOdgAH7AQJhAQMOlyc6AQP2AwTCAgYcLk90AgbsBwiEBQw4XJ7oBAzYDxAICxhwuDzRCRiwHyAQFjDgcHmiEzBgP0AgLGDA4fJEJ2DAfoBAWMCAw+WJTsCA/QCBsIABh8sTnYAB+wECYQEDDpcnOgED9gMEwgIGHC5PdAIG7AcIhAUMOFye6AQM2A8QCAsYcLg80QkYsB8gEBYw4HB5ohMwYD9AICxgwOHyRCdgwH6AQFjAgMPliU7AgP0AgbCAAYfLE52AAfsBAmEBAw6XJzqBB9qHANEyKGmGAAAAAElFTkSuQmCC"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter starts_with(kind, "acceleration") and contains(kind, "livemode")
                    statsby credits:round(sum(value),2), group_by(dataset_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, dataset_id, @."% of total"
                EOT
            },
            {
                id       = "stage-l8zyc43r"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {
                            "0" = "_c_valid_from"
                            "1" = "_c_valid_to"
                            "2" = "dataset_id"
                        }
                        columnVisibility            = {}
                        columnWidths                = {}
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 50
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 0
                        viewType                    = "Compact"
                    }
                    index              = 29
                    inputList          = [
                        {
                            id          = "query-input-jrnumsxv"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Daily Query Live Mode Credits by Dataset"
                    managers           = [
                        {
                            id                     = "tdypja3y"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                        {
                            id         = "c95hkyg6"
                            isDisabled = false
                            type       = "Vis"
                            vis        = {
                                config = {
                                    areaFillType        = "SolidFill"
                                    legend              = {
                                        placement        = "right"
                                        showNullAsOption = "Custom"
                                        showNullAsString = "Other"
                                        type             = "list"
                                        visible          = true
                                    }
                                    type                = "bar"
                                    xAxisLabelPlacement = "horizontal"
                                    xConfig             = {
                                        visible = true
                                    }
                                    yConfig             = {
                                        axisLabel = "Credits"
                                        visible   = true
                                    }
                                }
                                source = {
                                    table = {
                                        groupFields   = [
                                            [
                                                "dataset_id",
                                            ],
                                        ]
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
                                        y             = "credits"
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
                        ]
                        rollup              = {}
                        wantBuckets         = 7
                    }
                    serializable       = true
                    steps              = [
                        {
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-029nmupz"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-bekd9lld"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "@prefilter <- @ {",
                                "    filter contains(kind, \"query\") and contains(kind, \"livemode\")",
                                "}",
                                "",
                                "@topk <- @prefilter {",
                                "    statsby credits:sum(value), group_by(dataset_id)",
                                "    topk 14, max(credits)",
                                "}",
                                "",
                                "<- @prefilter {",
                                "    leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id",
                                "    timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)",
                                "}",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAADQCAYAAAA5+eykAAAAAXNSR0IArs4c6QAAC/VJREFUeF7tnW2MVFcZx8+5987sDqUsBcrbEi3bbslSoTagxFgo2MTEF7RtFBOJr4kajU02GvGb3f1kgh9sYtNov7CJaaOL2iJq0sRmt6KgDVEUFlgNL5UWWMTSheLuzsy9x0wcUpuye3fu7rk7zzm/fp1773me3//5ce7cmZ1qxX8QgIBYAlps5RQOAQgoBGYIICCYAAILDo/SIYDAzAAEBBNAYMHhUToEEJgZgIBgAggsODxKhwACMwMQEEwAgQWHR+kQQGBmAAKCCSCw4PAoHQIIzAxAQDABBBYcHqVDAIGZAQgIJoDAgsOjdAggMDMAAcEEEFhweJQOAQRmBiAgmAACCw6P0iGAwMwABAQTQGDB4VE6BBCYGYCAYAIILDg8SocAAjMDEBBMAIEFh0fpEEBgZgACggkgsODwKB0CCMwMQEAwAQQWHB6lQwCBmQEICCaAwILDo3QIIDAzAAHBBBBYcHiUDgEEZgYgIJgAAgsOj9IhgMDMAAQEE0BgweFROgQQmBmAgGACCCw4PEqHAAIzAxAQTACBBYdH6RBAYGYAAoIJILDg8CgdAgjMDEBAMAEEFhwepUMAgZkBCAgmgMCCw6N0CCAwMwABwQQQWHB4lA4BBGYGICCYAAILDo/SIYDAzAAEBBNAYMHhUToEEJgZgIBgAggsODxKhwACMwMQEEwAgQWHR+kQQGBmAAKCCSCw4PAoHQIIzAxAQDABBBYcHqVDAIGZAQgIJoDAgsOjdAggMDMAAcEEEFhweJQOAQRmBiAgmAACCw6P0iGAwMwABAQTQGDB4VE6BBCYGYCAYAIILDg8SocAAjMDEBBMAIEFh0fpEEBgZgACggkgsODwKB0CCMwMQEAwAQQWHB6lQwCBmQEICCaAwILDo3QIIDAzAAHBBBBYcHiUDgEEZgYgIJgAAgsOT0rpF753YKtK1NZc6g3U4IpvbR7MZa0mWASBmyAE10u4sPvAgFI5CWxU74pvb+5xnemN/hC4TmLip8t7tDYP5BV8ccfItrzWmut1ENheAghcZ3vlVx/pjpLrD9lD/dYr3/qxwXxuKfNqaIp1ENheCAhcZ/vqgR/0KK0fs4f6rVduv//r3rA//+TzfaqlfEcubAvV51Z+9uHHc1mrCRbxZojSWO/fv78n1PHH046brdc//NGH7putazX7dc7//okBk9t7YNPbvvlR3gM3+1DMdn0//9E3unWhLbdb6Ee++Jg3t9AIPNvT+ub12IHrLJ7e9Y4erUxut9Cf3n3OG/YIjMD2CNSvvPf7n+k2ldHcduAdu37pzQ48fOi7fS1J673WQ1RKFZJoH7fQeZBusjVq74GVUrntwNu3b/dmB37m5Cdy+xzYGNW7s+tnvAduMr+sl3Pmj1/t/tfY6s9ZX6i+wHu37fLmIRYC25sqb3aBNIRm+N09Ksf3wHrNX71hj8Bp05f9dW+GKA0RAqcRyv46Amdnl3YmAtcJxQfv6jZhlNtDrGjTSW8eYh06+P6+iaiYy0OsV29dvI/3wGnaO/h6/bvQuT3EKu4Y8eYfT75KaU8Yb4YoDSECpxHK/joCZ2eXdiYC1wkhcNqoZH8dgbOzSzsTgRE4bUZm/DoCzxjhpBdA4Dqa8t5l3cqo3D4HLu4Y8eZzYARGYHsE2IGts0Vge4jZgW98jPRCR3c8OpbfDvzIBXZgG3PNT+rYoNr81+SLHPYyuvLkd/qSZGEunwOXr79nH7+JZS/Lpr0yAtuLpty/LMc/ZtC9LZ+6yB8z2IuzOa+MwPZyQWB7bHkPXGeLwPaGDIHtsUVgBLY3XTc+ouMW2hpjBEZga8N148LswPYQIzAC25sudmDrbBEYga0Pmfn7vQPK5PS/VlG6V685wlNo66k22QI8xLIXCALbY8sOzA5sb7rqV3752Af7FkejuXyR4xY9sY8d2HqkzbfAl198ukfp/H6V8qktO735x/NLv3tmQCuTzy+QGNX71AM7uYVuPsXsVoTA9vgisD223uwCaQgROI1Q9tcRODu7tDMRuE4IgdNGJfvrCJydXdqZCIzAaTMy49cReMYIJ70AAiOwvemqXxmB7SFGYAS2N10IbJ0tAiOw9SFjB7aHGIER2N50zeEO/MRXXjDWG6svYLTqffSHD87JZ8/TEriyd3lDH8JXk1BHQZwJYOGTFwezgDfGBFrrJMu5tXOkPIWeaZ9Z+czkvLnYgc/s+dCzM6m5kXNfe23Jixu++ePHGznn/4+dSaZTCnz0xD+2ruvqHDTPLlzYSHFXK/ODayu+tqT98u5LjZxXO1Y//PrrjZ5TO35gwERL3nlm8bqOjpEs59fO+fzAnob67CwtammP5s8fvPbPfze6Zt+2L2Tq89y5c6Xz59+Yt2lTV8NrNlrjjeMPHz7c1tbWZjo7O69muUajXGtrbJl/16LL5up/jl+/NN7omjW2WdZ8cMGaJafGL149Wx4tZ1mz0XNqxx89fXrZu1avvqy1jrOcP60deDoXNsbov504cY9KojUqMAWt9GWTmJU6DFZGxhzs6uo8oLXOtCtPtn5tzT8fO7ZO63n3hCaZZyIzEqhgpdFJq4rVn9av7XxpttccGBiIFi1d+T6tguVG6zDUwXVl4mVxnCzVLfon6++++/R0eDVyTG3NJavuuF9XKysqiQ50YMZUopZqrYOCCn+9dm3Hy41cbzrHDg0NzY9Vy+ZYmUVhqJSJw4mwaJbGE5VipVTYs/HOO0enc51GjqmtqcLSB4xJbtNaV3ViwnFTaYuCwrVSZH6R9R+QqWoYGjqzXKn4vkTpFVFBXaok8e3V2CyKVHCxPDbav3HjxkojPUzn2CNHhtsLrYUN1SRuD3V0Wmtzu0lMuw6Sk2NvjP6mkTXfJvDRk6fXx5WkK4jUwlJkflsul69MpyiOgQAE8iVQLBbDSXdgY0w4PDw8L9+SWA0CEGiEwKzdQjeyKMdCAAKzQwCBZ4cjV4HAnBBA4DnBzqIQmB0CU70HDg698krL7CzDVSAAARsEbvoU2qh4jTJBQYfhX2IzkemzPxvFck0IQOBNAoViMeYWmomAgGACCCw4PEqHAAIzAxAQTGDKh1iDg4OB4N4oHQLOE7jpQ6wkqazVOlwQRuYPidY8xHJ+DGhQIoHan99xCy0xOWqGQJ0AAjMKEBBMAIEFh0fpEEBgZgACgglM+k0sk+jSvELh8Ph45Zrg/igdAs4SCGpPsSbrrr+/P+zo6OBjJGfjpzEXCHAL7UKK9OAtAQT2Nnoad4EAAruQIj14S2DSb2KpILqtVIqeH1eKH7XzdjxovJkJVMvlaNIduPZTpqVVq/hRu2ZOkNq8J8AttPcjAADJBBBYcnrU7j0BBPZ+BAAgmcCUfw989uzZouTmqB0CrhO4+Vcpk0qHCQpRUKkOFYsl/h7Y9SmgP5EE4jhOuIUWGR1FQ+B/BBCYSYCAYAIILDg8SofAlA+x2KEZEAg0N4Gbf5XSVDtNohaoin7JmOr15m6B6iDgJ4HW1lbeA/sZPV27QoD3wK4kSR9eEkBgL2OnaVcIILArSdKHlwQm+VE7s0FpEyVVc7Cc8H9m8HIyaLrpCdwy1Y/aGWPC48ePh03fBQVCwGMC3EJ7HD6tyyeAwPIzpAOPCSCwx+HTunwCbxO435hw7fCpLTrWpyYmkrEoKlblt0kHEHCPQLWa8qN2q/hRO/dSpyOnCHAL7VScNOMbAQT2LXH6dYoAAjsVJ834RgCBfUucfp0igMBOxUkzvhFAYN8Sp1+nCCCwU3HSjG8EENi3xOnXKQII7FScNOMbAQT2LXH6dYoAAjsVJ834RgCBfUucfp0igMBOxUkzvhFAYN8Sp1+nCCCwU3HSjG8EENi3xOnXKQII7FScNOMbAQT2LXH6dYoAAjsVJ834RgCBfUucfp0igMBOxUkzvhFAYN8Sp1+nCCCwU3HSjG8EENi3xOnXKQII7FScNOMbAQT2LXH6dYoAAjsVJ834RgCBfUucfp0igMBOxUkzvhFAYN8Sp1+nCCCwU3HSjG8EENi3xOnXKQII7FScNOMbAQT2LXH6dYoAAjsVJ834RgCBfUucfp0igMBOxUkzvhFAYN8Sp1+nCPwXdJZM5nrsxf0AAAAASUVORK5CYII="
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "vis"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    @prefilter <- @ {
                        filter contains(kind, "query") and contains(kind, "livemode")
                    }
                                        
                    @topk <- @prefilter {
                        statsby credits:sum(value), group_by(dataset_id)
                        topk 14, max(credits)
                    }
                                        
                    <- @prefilter {
                        leftjoin dataset_id=@topk.dataset_id, dataset_id:@topk.dataset_id
                        timechart options(empty_bins:true), duration_hr(24), credits:sum(value), group_by(dataset_id)
                    }
                EOT
            },
            {
                id       = "stage-wi46afg6"
                input    = [
                    {
                        datasetId   = null
                        datasetPath = null
                        inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                        inputRole   = "Data"
                        stageId     = "stage-un8uhseg"
                    },
                ]
                layout   = {
                    appearance         = "VISIBLE"
                    dataTableViewState = {
                        columnOrderOverride         = {}
                        columnVisibility            = {}
                        columnWidths                = {
                            "% of total" = 134
                            credits      = 184
                        }
                        defaultColumnWidth          = 70
                        disableFixedLeftColumns     = false
                        minColumnWidth              = 60
                        preserveCellAndRowSelection = true
                        rowHeaderWidth              = 33
                        rowHeights                  = {}
                        selection                   = {
                            cells                = {}
                            columnSelectSequence = []
                            columns              = {}
                            highlightState       = {}
                            rows                 = {}
                            selectionType        = "table"
                        }
                        tableHeight                 = 143
                        tableWidth                  = 1156
                        viewType                    = "Auto"
                    }
                    index              = 30
                    inputList          = [
                        {
                            id          = "query-input-nad81o0f"
                            inputName   = "Observe Usage Metrics Primary Dataset_-un8u"
                            inputRole   = "Data"
                            isUserInput = false
                            stageId     = "stage-un8uhseg"
                        },
                    ]
                    label              = "Total Query Live Mode Credits By Dataset"
                    managers           = [
                        {
                            id                     = "1f79yr0w"
                            isDisabled             = true
                            isResourceCountEnabled = false
                            type                   = "Timescrubber"
                        },
                    ]
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
                            customName     = "Input"
                            customSummary  = "Observe Usage Metrics Primary Dataset_-un8u"
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-g0u3gsa2"
                            index          = 0
                            isPinned       = false
                            opal           = []
                            type           = "InputStep"
                        },
                        {
                            customSummary  = ""
                            datasetQueryId = {
                                ignoreCompress = false
                                resultKinds    = [
                                    "ResultKindSchema",
                                    "ResultKindData",
                                    "ResultKindVolumeStats",
                                    "ResultKindColumnStats",
                                ]
                            }
                            id             = "step-pa47xxu7"
                            index          = 1
                            isPinned       = false
                            opal           = [
                                "filter contains(kind, \"query\") and contains(kind, \"livemode\")",
                                "statsby credits:round(sum(value),2), group_by(dataset_id)",
                                "make_col \"% of total\":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')",
                                "pick_col credits, dataset_id, @.\"% of total\" ",
                            ]
                            type           = "unknown"
                        },
                    ]
                    thumbnailUri       = "data:image/png;base64,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"
                    type               = "table"
                    viewModel          = {
                        builderOpalTab    = "OPAL"
                        railCollapseState = {
                            inputsOutputs = false
                            minimap       = false
                            note          = true
                            script        = true
                        }
                        showTimeRuler     = true
                        stageTab          = "table"
                    }
                }
                params   = null
                pipeline = <<-EOT
                    filter contains(kind, "query") and contains(kind, "livemode")
                    statsby credits:round(sum(value),2), group_by(dataset_id)
                    make_col "% of total":strcat(string(round(100 * credits / window(sum(credits), group_by()), 1)), '%')
                    pick_col credits, dataset_id, @."% of total"
                EOT
            },
        ]
    )
    workspace   = "o:::workspace:42962932"
}
