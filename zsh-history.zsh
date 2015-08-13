#!/usr/bin/env zsh
#
# {{{ File header. #############################################################
#                                                                              #
# File informations:                                                           #
# - Name:    zsh-history.zsh                                                   #
# - Summary: Configure ZSH history capabilities.                               #
# - Authors:                                                                   #
#   - Alessandro Molari <molari.alessandro@gmail.com> (alem0lars)              #
# - Thanks to:                                                                 #
#   - Prezto's history module for initial inspiration.                         #
#                                                                              #
# Project informations:                                                        #
#   - Homepage:        https://github.com/alem0lars/zsh-complete               #
#   - Getting started: see README.md in the project root folder                #
#                                                                              #
# License: Apache v2.0 (see below)                                             #
#                                                                              #
################################################################################
#                                                                              #
# Licensed to the Apache Software Foundation (ASF) under one more contributor  #
# license agreements.  See the NOTICE file distributed with this work for      #
# additional information regarding copyright ownership. The ASF licenses this  #
# file to you under the Apache License, Version 2.0 (the "License"); you may   #
# not use this file except in compliance with the License.                     #
# You may obtain a copy of the License at                                      #
#                                                                              #
#   http://www.apache.org/licenses/LICENSE-2.0                                 #
#                                                                              #
# Unless required by applicable law or agreed to in writing, software          #
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT    #
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.             #
# See the License for the specific language governing permissions and          #
# limitations under the License.                                               #
#                                                                              #
# }}} ##########################################################################


# {{{ Variables.

HISTFILE="${ZDOTDIR:-$HOME}/.zhistory" # The path to the history file.
HISTSIZE=65536                         # The maximum number of events to save in the internal history.
SAVEHIST=65536                         # The maximum number of events to save in the history file.

# }}}

# {{{ Options.

setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY          # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS      # Don't display a previously found event.
setopt HIST_IGNORE_SPACE      # Don't record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write a duplicate event to the history file.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing non-existent history.

# }}}


# vim: set filetype=zsh :
