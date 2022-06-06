Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF28D53EF35
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:10:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233407AbiFFUKx (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:10:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233429AbiFFUKk (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:10:40 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553D113129B
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:38 -0700 (PDT)
Message-ID: <20220606200810.839874480@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546237;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=OQYwRcTCInEAX8ijuwAq49E+c2yXcILKM0E+D+m+jZ4=;
        b=3vztthAhQ9g1mIMr6PmNxwjXz65+ulajqVxzAiJdtY+iajecmOiRx0dRIhc3u9wj4V1F0l
        Ed0WenVTbKK5X02R8g0R8vIjlN3tgmsvE7o53SCWpCMEBMMVpbnSCkuetK0GgQjSF/t+8N
        ALaHcOfihrIr/41rLUL8tzXY3gpfjLf5JQHVWeMwX9qePJ0Ngwcksd3TMDyciuLWSTmXXx
        YXn2tOrvYClhVsYQVOfqUXISXt9shYN3ceoW4qtKi4f7dHmAznZlemebi6dkCEqfssEXBv
        x0dakN7u9rl+snuWiHfD/5lhp5d68K0BudzRdOp1qG086052nyGUM/mxb8RLlQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546237;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=OQYwRcTCInEAX8ijuwAq49E+c2yXcILKM0E+D+m+jZ4=;
        b=70NoXCnmAFwrF7mavf+547/7HaRuJv6/62GgS6pEWoe7JRxsszNJKRMzgEp46NNlOGeJgq
        zFhEx2DidrnEpVBg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 13/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_240.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:36 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Based on the normalized pattern:

    this program is free software you can redistribute it and/or modify it
    under the terms of the gnu general public license as published by the
    free software foundation version 2 of the license  this program is
    distributed in the hope that it will be useful but without any
    warranty without even the implied warranty of merchantability or
    fitness for a particular purpose see the gnu general public license
    for more details  no warranty the program is provided on an as is
    basis without warranties or conditions of any kind either express or
    implied including without limitation any warranties or conditions of
    title non-infringement merchantability or fitness for a particular
    purpose each recipient is solely responsible for determining the
    appropriateness of using and distributing the program and assumes all
    risks associated with its exercise of rights under this agreement
    including but not limited to the risks and costs of program errors
    damage to or loss of data programs or equipment and unavailability or
    interruption of operations  disclaimer of liability neither recipient
    nor any contributors shall have any liability for any direct indirect
    incidental special exemplary or consequential damages (including
    without limitation lost profits) however caused and on any theory of
    liability whether in contract strict liability or tort (including
    negligence or otherwise) arising in any way out of the use or
    distribution of the program or the exercise of any rights granted
    hereunder even if advised of the possibility of such damages

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/scsi/smartpqi/Kconfig |   30 +-----------------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

--- a/drivers/scsi/smartpqi/Kconfig
+++ b/drivers/scsi/smartpqi/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # Kernel configuration file for the SMARTPQI
 #
@@ -7,35 +8,6 @@
 # Copyright (c) 2016 PMC-Sierra, Inc.
 #  (mailto:storagedev@microchip.com)
 
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# as published by the Free Software Foundation; version 2
-# of the License.
-
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-
-# NO WARRANTY
-# THE PROGRAM IS PROVIDED ON AN "AS IS" BASIS, WITHOUT WARRANTIES OR
-# CONDITIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED INCLUDING, WITHOUT
-# LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, NON-INFRINGEMENT,
-# MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each Recipient is
-# solely responsible for determining the appropriateness of using and
-# distributing the Program and assumes all risks associated with its
-# exercise of rights under this Agreement, including but not limited to
-# the risks and costs of program errors, damage to or loss of data,
-# programs or equipment, and unavailability or interruption of operations.
-
-# DISCLAIMER OF LIABILITY
-# NEITHER RECIPIENT NOR ANY CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY
-# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
-# DAMAGES (INCLUDING WITHOUT LIMITATION LOST PROFITS), HOWEVER CAUSED AND
-# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
-# TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
-# USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS GRANTED
-# HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
 
 config SCSI_SMARTPQI
 	tristate "Microchip PQI Driver"

