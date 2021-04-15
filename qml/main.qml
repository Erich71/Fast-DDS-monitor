// Copyright 2021 Proyectos y Sistemas de Mantenimiento SL (eProsima).
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    visible: true
    width: 1200
    height: 675
    title: qsTr("Fast DDS Monitor")

    header: MonitorToolBar {
        id: toolBar
    }

    Panels {
        id: panels
    }

    InitMonitorDialog {
        id: dialogInitMonitor
    }

    DataKindDialog {
        id: dataKindDialog
        onCreateChart: panels.createChart(dataKind)
    }
}
