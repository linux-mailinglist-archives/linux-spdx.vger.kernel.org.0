Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD2945400DC
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 16:11:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245195AbiFGOLp (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 10:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245177AbiFGOLk (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 10:11:40 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02FCBA501E
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 07:11:37 -0700 (PDT)
Message-ID: <20220607131511.581515499@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654611095;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=Dj3OuDmOVynk9BqJHQRvolAJ0PVZz8LtZ6MA//uSAoQ=;
        b=F6lsR6VF08sKDOTq9/UXnyJkRe7H5ZKi29mXaRFJ2Oh/RUZ3zg7GsHFVpYQAEzr4XbuuPK
        VOiwCW+kx8ku/A5sRphJDiD1QM7PjTgE4d1Cd0W1HioxtqkUxB/gOYclh1o2sM33+Eazq5
        oshhuzFbJdjOxY7Qdn5xZi8xPRvdKLtLPGkF3Uo2NHep6rQsJ55ne68qVQ6NKTL12muci3
        52sSKROW5P+YLpstdxtZqQJ3NPj57CF0pJOo3xiN0FBL8GnYfnjYMFW7ggP7w4t/reat0T
        ZE/YNWjkzaxnxCzSho95P4RwcdLGAAbpJ+HwXu7d8EjKiMbv3NZUt5MXYSuxWQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654611095;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=Dj3OuDmOVynk9BqJHQRvolAJ0PVZz8LtZ6MA//uSAoQ=;
        b=kc74zSF4JKMk8WmV6uAI7qZ7fgudbjJXEtwfW0svkl6As/wY21cPpzX333K3HUeko9hWJ4
        NFoqQ28DZzWeuADA==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Cc:     Allison Randal <allison@lohutok.net>
Subject: [patch V2 21/24] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_390.RULE
References: <20220607131425.436789559@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Tue,  7 Jun 2022 16:11:35 +0200 (CEST)
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

    this software file (the file ) is distributed by marvell international
    ltd under the terms of the gnu general public license version 2 june
    1991 (the license ) you may use redistribute and/or modify this file
    in accordance with the terms and conditions of the license a copy of
    which is available by writing to the free software foundation inc 51
    franklin street fifth floor boston ma 02110-1301 usa or on the
    worldwide web at http://www gnu org/licenses/old-licenses/gpl-2 0 txt
    the file is distributed as-is without warranty of any kind and the
    implied warranties of merchantability or fitness for a particular
    purpose are expressly disclaimed the license provides additional
    details about this warranty disclaimer

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Allison Randal <allison@lohutok.net>
---
 drivers/bluetooth/btmrvl_debugfs.c |   15 +--------------
 drivers/bluetooth/btmrvl_drv.h     |   16 +---------------
 drivers/bluetooth/btmrvl_main.c    |   15 +--------------
 drivers/bluetooth/btmrvl_sdio.c    |   15 +--------------
 drivers/bluetooth/btmrvl_sdio.h    |   16 +---------------
 5 files changed, 5 insertions(+), 72 deletions(-)

--- a/drivers/bluetooth/btmrvl_debugfs.c
+++ b/drivers/bluetooth/btmrvl_debugfs.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Bluetooth driver: debugfs related functions
  *
  * Copyright (C) 2009, Marvell International Ltd.
- *
- * This software file (the "File") is distributed by Marvell International
- * Ltd. under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  **/
 
 #include <linux/debugfs.h>
--- a/drivers/bluetooth/btmrvl_drv.h
+++ b/drivers/bluetooth/btmrvl_drv.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * Marvell Bluetooth driver: global definitions & declarations
  *
  * Copyright (C) 2009, Marvell International Ltd.
- *
- * This software file (the "File") is distributed by Marvell International
- * Ltd. under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
- *
  */
 
 #include <linux/kthread.h>
--- a/drivers/bluetooth/btmrvl_main.c
+++ b/drivers/bluetooth/btmrvl_main.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell Bluetooth driver
  *
  * Copyright (C) 2009, Marvell International Ltd.
- *
- * This software file (the "File") is distributed by Marvell International
- * Ltd. under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  **/
 
 #include <linux/module.h>
--- a/drivers/bluetooth/btmrvl_sdio.c
+++ b/drivers/bluetooth/btmrvl_sdio.c
@@ -1,21 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * Marvell BT-over-SDIO driver: SDIO interface related functions.
  *
  * Copyright (C) 2009, Marvell International Ltd.
- *
- * This software file (the "File") is distributed by Marvell International
- * Ltd. under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  **/
 
 #include <linux/firmware.h>
--- a/drivers/bluetooth/btmrvl_sdio.h
+++ b/drivers/bluetooth/btmrvl_sdio.h
@@ -1,22 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /**
  * Marvell BT-over-SDIO driver: SDIO interface related definitions
  *
  * Copyright (C) 2009, Marvell International Ltd.
- *
- * This software file (the "File") is distributed by Marvell International
- * Ltd. under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
- *
  **/
 
 #define SDIO_HEADER_LEN			4

