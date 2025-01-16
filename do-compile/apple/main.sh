#! /usr/bin/env bash
#
# Copyright (C) 2021 Matt Reach<qianlongxu@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#

set -e

# 当前脚本所在目录
THIS_DIR=$(DIRNAME=$(dirname "$0"); cd "$DIRNAME"; pwd)
cd "$THIS_DIR"

# 循环编译所有的库
for lib in $MR_VENDOR_LIBS
do
    [[ ! -f "../../configs/libs/${lib}.sh" ]] && (echo "❌$lib config not exist,compile will stop.";exit 1;)

    echo "===[$MR_CMD $lib]===================="
    source "../../configs/libs/${lib}.sh"
    
    ./any.sh
    if [[ $? -eq 0 ]];then
        echo "🎉  Congrats"
        echo "🚀  ${LIB_NAME} successfully $MR_CMD."
        echo
    fi
    echo "===================================="
done