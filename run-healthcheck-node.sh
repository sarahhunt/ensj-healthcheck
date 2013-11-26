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


#JAVA_HOME=/usr/opt/java
dir=$HOME/ensj-healthcheck

cp=$dir
for jar in $dir/lib/*.jar; do
    cp=$jar:$cp
done

cd $dir

$JAVA_HOME/bin/java -server -classpath $cp -Xmx1700m org.ensembl.healthcheck.NodeDatabaseTestRunner $*


