Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 642A953EF43
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:11:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233030AbiFFULM (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:11:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233260AbiFFULB (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:11:01 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABD64131280
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:10:52 -0700 (PDT)
Message-ID: <20220606200811.362351824@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654546251;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/6+4E4vVpM5th5vSO0ip5xgIdoAwMlqCJR0xuIu0dsU=;
        b=zRES5hvAlWW6Pgr5SWRMf+l5zp8GL5RwkeONn9at3ehTnlsSjZwqDLYGrx6iueCGMIsGi8
        gGrGjrCH8r2ez68OgWeSE07+9Mw5oDvpHgQc4Z7AYjfsaXw2N9I8ftJ8fjGh7f8PhPvGKx
        H+UfAup4Bgkn4Ln7tamQFkK94tP2CP+kcqUMmSHHSbqlwdr8DyZ63eNVz67LQ2ph9d1rMu
        V1udNb2ajsyHI6ePVtdRvyECvf35+ZFrYV7VyteO7TPNo6U1M6HPgHXr/Jf5ZHPKgH4V+S
        z1p7paO4DjRqgQ65I0B+6dFj8vPUQ1/s+y7XtFfaZi8d2MlqZAKpZW+X1EBazg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654546251;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         references:references; bh=/6+4E4vVpM5th5vSO0ip5xgIdoAwMlqCJR0xuIu0dsU=;
        b=PsE4YVE3Uj6clMMHiCU8rtqm1Ycm2hljBAEHOrqmDnNLHhHBHz3UuwQVWxTleGTnN6W/Ha
        6pWQjvbBLrei4MAg==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [patch 22/25] treewide: Replace GPLv2 boilerplate/reference with SPDX
 - gpl-2.0_391.RULE
References: <20220606200732.204209102@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Date:   Mon,  6 Jun 2022 22:10:50 +0200 (CEST)
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

    this software file (the file ) is distributed by nxp under the terms
    of the gnu general public license version 2 june 1991 (the license )
    you may use redistribute and/or modify this file in accordance with
    the terms and conditions of the license a copy of which is available
    by writing to the free software foundation inc 51 franklin street
    fifth floor boston ma 02110-1301 usa or on the worldwide web at
    http://www gnu org/licenses/old-licenses/gpl-2 0 txt  the file is
    distributed as-is without warranty of any kind and the implied
    warranties of merchantability or fitness for a particular purpose are
    expressly disclaimed the license provides additional details about
    this warranty disclaimer

extracted by the scancode license scanner the SPDX license identifier

    GPL-2.0-only

has been chosen to replace the boilerplate/reference.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/net/wireless/marvell/mwifiex/11ac.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11ac.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11h.c           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n.c           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n.h           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n_aggr.c      |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n_aggr.h      |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/11n_rxreorder.h |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/Makefile        |   13 +------------
 drivers/net/wireless/marvell/mwifiex/cfg80211.c      |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/cfg80211.h      |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/cfp.c           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/cmdevt.c        |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/debugfs.c       |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/decl.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/ethtool.c       |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/fw.h            |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/ie.c            |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/init.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/ioctl.h         |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/join.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/main.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/main.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/pcie.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/pcie.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/pcie_quirks.c   |   18 ++----------------
 drivers/net/wireless/marvell/mwifiex/pcie_quirks.h   |   18 ++----------------
 drivers/net/wireless/marvell/mwifiex/scan.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sdio.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sdio.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_cmd.c       |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c   |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_event.c     |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_ioctl.c     |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_rx.c        |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/sta_tx.c        |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/txrx.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/uap_cmd.c       |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/uap_event.c     |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/uap_txrx.c      |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/usb.c           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/usb.h           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/util.c          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/util.h          |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/wmm.c           |   14 +-------------
 drivers/net/wireless/marvell/mwifiex/wmm.h           |   14 +-------------
 47 files changed, 49 insertions(+), 616 deletions(-)

--- a/drivers/net/wireless/marvell/mwifiex/11ac.c
+++ b/drivers/net/wireless/marvell/mwifiex/11ac.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: 802.11ac
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/11ac.h
+++ b/drivers/net/wireless/marvell/mwifiex/11ac.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: 802.11ac
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_11AC_H_
--- a/drivers/net/wireless/marvell/mwifiex/11h.c
+++ b/drivers/net/wireless/marvell/mwifiex/11h.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: 802.11h
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "main.h"
--- a/drivers/net/wireless/marvell/mwifiex/11n.c
+++ b/drivers/net/wireless/marvell/mwifiex/11n.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: 802.11n
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/11n.h
+++ b/drivers/net/wireless/marvell/mwifiex/11n.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: 802.11n
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_11N_H_
--- a/drivers/net/wireless/marvell/mwifiex/11n_aggr.c
+++ b/drivers/net/wireless/marvell/mwifiex/11n_aggr.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: 802.11n Aggregation
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/11n_aggr.h
+++ b/drivers/net/wireless/marvell/mwifiex/11n_aggr.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: 802.11n Aggregation
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_11N_AGGR_H_
--- a/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c
+++ b/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: 802.11n RX Re-ordering
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.h
+++ b/drivers/net/wireless/marvell/mwifiex/11n_rxreorder.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: 802.11n RX Re-ordering
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_11N_RXREORDER_H_
--- a/drivers/net/wireless/marvell/mwifiex/Makefile
+++ b/drivers/net/wireless/marvell/mwifiex/Makefile
@@ -1,18 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
 #
 # Copyright 2011-2020 NXP
 #
-# This software file (the "File") is distributed by NXP
-# under the terms of the GNU General Public License Version 2, June 1991
-# (the "License").  You may use, redistribute and/or modify this File in
-# accordance with the terms and conditions of the License, a copy of which
-# is available by writing to the Free Software Foundation, Inc.,
-# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
-# worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
-#
-# THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
-# IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
-# ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
-# this warranty disclaimer.
 
 
 mwifiex-y += main.o
--- a/drivers/net/wireless/marvell/mwifiex/cfg80211.c
+++ b/drivers/net/wireless/marvell/mwifiex/cfg80211.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: CFG80211
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "cfg80211.h"
--- a/drivers/net/wireless/marvell/mwifiex/cfg80211.h
+++ b/drivers/net/wireless/marvell/mwifiex/cfg80211.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: CFG80211
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef __MWIFIEX_CFG80211__
--- a/drivers/net/wireless/marvell/mwifiex/cfp.c
+++ b/drivers/net/wireless/marvell/mwifiex/cfp.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: Channel, Frequence and Power
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/cmdevt.c
+++ b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: commands and events
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <asm/unaligned.h>
--- a/drivers/net/wireless/marvell/mwifiex/debugfs.c
+++ b/drivers/net/wireless/marvell/mwifiex/debugfs.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: debugfs
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <linux/debugfs.h>
--- a/drivers/net/wireless/marvell/mwifiex/decl.h
+++ b/drivers/net/wireless/marvell/mwifiex/decl.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: generic data structures and APIs
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_DECL_H_
--- a/drivers/net/wireless/marvell/mwifiex/ethtool.c
+++ b/drivers/net/wireless/marvell/mwifiex/ethtool.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: ethtool
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "main.h"
--- a/drivers/net/wireless/marvell/mwifiex/fw.h
+++ b/drivers/net/wireless/marvell/mwifiex/fw.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: Firmware specific macros & structures
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_FW_H_
--- a/drivers/net/wireless/marvell/mwifiex/ie.c
+++ b/drivers/net/wireless/marvell/mwifiex/ie.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: management IE handling- setting and
  * deleting IE.
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "main.h"
--- a/drivers/net/wireless/marvell/mwifiex/init.c
+++ b/drivers/net/wireless/marvell/mwifiex/init.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: HW/FW Initialization
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/ioctl.h
+++ b/drivers/net/wireless/marvell/mwifiex/ioctl.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: ioctl data structures & APIs
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_IOCTL_H_
--- a/drivers/net/wireless/marvell/mwifiex/join.c
+++ b/drivers/net/wireless/marvell/mwifiex/join.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: association and ad-hoc start/join
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/main.c
+++ b/drivers/net/wireless/marvell/mwifiex/main.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: major functions
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <linux/suspend.h>
--- a/drivers/net/wireless/marvell/mwifiex/main.h
+++ b/drivers/net/wireless/marvell/mwifiex/main.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: major data structures and prototypes
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_MAIN_H_
--- a/drivers/net/wireless/marvell/mwifiex/pcie.c
+++ b/drivers/net/wireless/marvell/mwifiex/pcie.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: PCIE specific handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <linux/iopoll.h>
--- a/drivers/net/wireless/marvell/mwifiex/pcie.h
+++ b/drivers/net/wireless/marvell/mwifiex/pcie.h
@@ -1,22 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /* @file mwifiex_pcie.h
  *
  * @brief This file contains definitions for PCI-E interface.
  * driver.
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef	_MWIFIEX_PCIE_H
--- a/drivers/net/wireless/marvell/mwifiex/pcie_quirks.c
+++ b/drivers/net/wireless/marvell/mwifiex/pcie_quirks.c
@@ -1,19 +1,5 @@
-/*
- * NXP Wireless LAN device driver: PCIE and platform specific quirks
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
- */
+// SPDX-License-Identifier: GPL-2.0-only
+// NXP Wireless LAN device driver: PCIE and platform specific quirks
 
 #include <linux/dmi.h>
 
--- a/drivers/net/wireless/marvell/mwifiex/pcie_quirks.h
+++ b/drivers/net/wireless/marvell/mwifiex/pcie_quirks.h
@@ -1,19 +1,5 @@
-/*
- * NXP Wireless LAN device driver: PCIE and platform specific quirks
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
- */
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* NXP Wireless LAN device driver: PCIE and platform specific quirks */
 
 #include "pcie.h"
 
--- a/drivers/net/wireless/marvell/mwifiex/scan.c
+++ b/drivers/net/wireless/marvell/mwifiex/scan.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: scan ioctl and command handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/sdio.c
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: SDIO specific handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <linux/firmware.h>
--- a/drivers/net/wireless/marvell/mwifiex/sdio.h
+++ b/drivers/net/wireless/marvell/mwifiex/sdio.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: SDIO specific definitions
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef	_MWIFIEX_SDIO_H
--- a/drivers/net/wireless/marvell/mwifiex/sta_cmd.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_cmd.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: station command handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_cmdresp.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: station command response handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/sta_event.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_event.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: station event handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/sta_ioctl.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_ioctl.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: functions for station ioctl
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/sta_rx.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_rx.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: station RX data handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include <uapi/linux/ipv6.h>
--- a/drivers/net/wireless/marvell/mwifiex/sta_tx.c
+++ b/drivers/net/wireless/marvell/mwifiex/sta_tx.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: station TX data handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/txrx.c
+++ b/drivers/net/wireless/marvell/mwifiex/txrx.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: generic TX/RX data handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/uap_cmd.c
+++ b/drivers/net/wireless/marvell/mwifiex/uap_cmd.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: AP specific command handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "main.h"
--- a/drivers/net/wireless/marvell/mwifiex/uap_event.c
+++ b/drivers/net/wireless/marvell/mwifiex/uap_event.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: AP event handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/uap_txrx.c
+++ b/drivers/net/wireless/marvell/mwifiex/uap_txrx.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: AP TX and RX data handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/usb.c
+++ b/drivers/net/wireless/marvell/mwifiex/usb.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: USB specific handling
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "main.h"
--- a/drivers/net/wireless/marvell/mwifiex/usb.h
+++ b/drivers/net/wireless/marvell/mwifiex/usb.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * This file contains definitions for mwifiex USB interface driver.
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_USB_H
--- a/drivers/net/wireless/marvell/mwifiex/util.c
+++ b/drivers/net/wireless/marvell/mwifiex/util.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: utility functions
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/util.h
+++ b/drivers/net/wireless/marvell/mwifiex/util.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: utility functions
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_UTIL_H_
--- a/drivers/net/wireless/marvell/mwifiex/wmm.c
+++ b/drivers/net/wireless/marvell/mwifiex/wmm.c
@@ -1,20 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * NXP Wireless LAN device driver: WMM
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #include "decl.h"
--- a/drivers/net/wireless/marvell/mwifiex/wmm.h
+++ b/drivers/net/wireless/marvell/mwifiex/wmm.h
@@ -1,20 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * NXP Wireless LAN device driver: WMM
  *
  * Copyright 2011-2020 NXP
- *
- * This software file (the "File") is distributed by NXP
- * under the terms of the GNU General Public License Version 2, June 1991
- * (the "License").  You may use, redistribute and/or modify this File in
- * accordance with the terms and conditions of the License, a copy of which
- * is available by writing to the Free Software Foundation, Inc.,
- * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA or on the
- * worldwide web at http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
- *
- * THE FILE IS DISTRIBUTED AS-IS, WITHOUT WARRANTY OF ANY KIND, AND THE
- * IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE
- * ARE EXPRESSLY DISCLAIMED.  The License provides additional details about
- * this warranty disclaimer.
  */
 
 #ifndef _MWIFIEX_WMM_H_

