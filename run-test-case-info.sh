#!/bin/sh
# Copyright [1999-2013] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute
# 
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


home=`dirname $0`
cp=$home:$home/build/

for jar in $home/lib/*.jar; do
    cp=$cp:$jar
done

java -cp $cp:resources/runtime/ -Xmx1000m -Djava.util.logging.config.file=config/logger/logging.properties org.ensembl.healthcheck.TestCaseInfo $*

