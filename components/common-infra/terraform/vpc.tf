# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module "vpc" {
  count = var.create_vpc_network ? 1 : 0
  source  = "terraform-google-modules/network/google"
  version = "~> 9.1"

  project_id   = module.project_services.project_id
  network_name = var.vpc_name
  routing_mode = "GLOBAL"

  subnets = []

}
