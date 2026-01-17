Return-Path: <linux-spdx+bounces-125-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D413D38ACF
	for <lists+linux-spdx@lfdr.de>; Sat, 17 Jan 2026 01:36:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CCF4E300A900
	for <lists+linux-spdx@lfdr.de>; Sat, 17 Jan 2026 00:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F06F1D514E;
	Sat, 17 Jan 2026 00:36:34 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta40.uswest2.a.cloudfilter.net (omta40.uswest2.a.cloudfilter.net [35.89.44.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E6D70810
	for <linux-spdx@vger.kernel.org>; Sat, 17 Jan 2026 00:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768610194; cv=none; b=I2GBnZYGjmY5ZRu646gBJr0de5ZIpWzozdvRjJFxP0gdEW3lgkRB2c8UnArXbm4Z+m1CUirGN39NQl3vpr1Veb+MvGL6QQuA2xFeDmTOwDOcqlqVNbPmATkN7OfZpn/z22BypzLh+a3vKvWM8b1vffRbwIR9KKfDt/pketp9rCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768610194; c=relaxed/simple;
	bh=1mEX1/blWnUKfy5zmcpnW4aL+clxbDLu5FS1ILtRXyc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A2Aef2tbhw1X1EkWYOZJNVAV0Qcl72IJT7+ERp+zz05I3D74L/M2ZNwc6FwlN5+7KTMyZBLGkKhKyn//18lWYe91f0+vD0p1C4Ql1ZNTlw8kmq3c8Goo4dkiiC2ib7oHr7cZ+R7sDUUxcGrHxONDJj4pNsFKpjNT44w0dmXu3s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=35.89.44.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5006b.ext.cloudfilter.net ([10.0.29.217])
	by cmsmtp with ESMTPS
	id gkUzvghz1aPqLguIovAVLB; Sat, 17 Jan 2026 00:36:30 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id guInvCE5fOs9RguIovOSdW; Sat, 17 Jan 2026 00:36:30 +0000
X-Authority-Analysis: v=2.4 cv=HPPDFptv c=1 sm=1 tr=0 ts=696ad98e
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=cH6R9-kdAAAA:8 a=t7CeM3EgAAAA:8
 a=wMNdZWldAAAA:8 a=R93Jy7f2AAAA:8 a=_Adn2NLSSP_36NI2X3kA:9 a=RVmHIydaz68A:10
 a=FdTzh2GWekK77mhwV6Dw:22 a=FUarYpL4UH3yWsho8X8J:22 a=_4ULuFcjZWfTdIrHNsp6:22
 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=54282 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vguIm-00000003dqH-1lc2;
	Fri, 16 Jan 2026 17:36:28 -0700
From: Tim Bird <tim.bird@sony.com>
To: jason.wessel@windriver.com,
	danielt@kernel.org
Cc: linux-spdx@vger.kernel.org,
	kgdb-bugreport@lists.sourceforge.net,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: debug: Add SPDX license ids to kdb files
Date: Fri, 16 Jan 2026 17:36:21 -0700
Message-ID: <20260117003621.669382-1-tim.bird@sony.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - host2044.hostmonster.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - sony.com
X-BWhitelist: no
X-Source-IP: 66.118.46.62
X-Source-L: No
X-Exim-ID: 1vguIm-00000003dqH-1lc2
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:54282
X-Source-Auth: tim@bird.org
X-Email-Count: 4
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfHUAqh4bNOw/Ee7DCOY9Kz0M9NzHwcUEJblJo0LA4P/aNPNZA6fl7KPYj5s99ozO3N70wPnpaPcnRyJXiM2AAfVmU2J5HrKWYl66PMv4wDY1L7haMurs
 bO8GJwtbMJ4XY7BozqOpO8NGb5u27lAwMGrYK8YaYaWfmqA0sMH2d5cyY4g6YuNush+7K+lxKoNw9sma4+hYCVZswYZlSnvypgg=

Add GPL-2.0 license id to some files related to kdb and kgdb,
replacing references to GPL or COPYING.

These files were introduced into the kernel in 2008 and 2010.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 include/linux/kdb.h             | 5 +----
 include/linux/kgdb.h            | 4 +---
 kernel/debug/debug_core.h       | 5 +----
 kernel/debug/kdb/kdb_bp.c       | 5 +----
 kernel/debug/kdb/kdb_bt.c       | 5 +----
 kernel/debug/kdb/kdb_debugger.c | 1 +
 kernel/debug/kdb/kdb_io.c       | 5 +----
 kernel/debug/kdb/kdb_keyboard.c | 4 +---
 kernel/debug/kdb/kdb_main.c     | 5 +----
 kernel/debug/kdb/kdb_private.h  | 1 +
 kernel/debug/kdb/kdb_support.c  | 5 +----
 11 files changed, 11 insertions(+), 34 deletions(-)

diff --git a/include/linux/kdb.h b/include/linux/kdb.h
index 741c58e86431..26fe4ab81b42 100644
--- a/include/linux/kdb.h
+++ b/include/linux/kdb.h
@@ -1,13 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _KDB_H
 #define _KDB_H
 
 /*
  * Kernel Debugger Architecture Independent Global Headers
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (c) 2000-2007 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (C) 2000 Stephane Eranian <eranian@hpl.hp.com>
  * Copyright (C) 2009 Jason Wessel <jason.wessel@windriver.com>
diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
index 5eebbe7a3545..22b3f3839f30 100644
--- a/include/linux/kgdb.h
+++ b/include/linux/kgdb.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * This provides the callbacks and functions that KGDB needs to share between
  * the core, I/O and arch-specific portions.
@@ -6,9 +7,6 @@
  *         Tom Rini <trini@kernel.crashing.org>
  *
  * 2001-2004 (c) Amit S. Kale and 2003-2005 (c) MontaVista Software, Inc.
- * This file is licensed under the terms of the GNU General Public License
- * version 2. This program is licensed "as is" without any warranty of any
- * kind, whether express or implied.
  */
 #ifndef _KGDB_H_
 #define _KGDB_H_
diff --git a/kernel/debug/debug_core.h b/kernel/debug/debug_core.h
index cd22b5f68831..a4882f7aaff7 100644
--- a/kernel/debug/debug_core.h
+++ b/kernel/debug/debug_core.h
@@ -1,11 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0
 /*
  * Created by: Jason Wessel <jason.wessel@windriver.com>
  *
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
- *
- * This file is licensed under the terms of the GNU General Public
- * License version 2. This program is licensed "as is" without any
- * warranty of any kind, whether express or implied.
  */
 
 #ifndef _DEBUG_CORE_H_
diff --git a/kernel/debug/kdb/kdb_bp.c b/kernel/debug/kdb/kdb_bp.c
index c0c2072f5452..eb8d851d620f 100644
--- a/kernel/debug/kdb/kdb_bp.c
+++ b/kernel/debug/kdb/kdb_bp.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Independent Breakpoint Handler
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (c) 1999-2004 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
  */
diff --git a/kernel/debug/kdb/kdb_bt.c b/kernel/debug/kdb/kdb_bt.c
index 137ba73f56fc..c561aa076970 100644
--- a/kernel/debug/kdb/kdb_bt.c
+++ b/kernel/debug/kdb/kdb_bt.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Independent Stack Traceback
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (c) 1999-2004 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
  */
diff --git a/kernel/debug/kdb/kdb_debugger.c b/kernel/debug/kdb/kdb_debugger.c
index e91fc3e4edd5..59b81032bbab 100644
--- a/kernel/debug/kdb/kdb_debugger.c
+++ b/kernel/debug/kdb/kdb_debugger.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Created by: Jason Wessel <jason.wessel@windriver.com>
  *
diff --git a/kernel/debug/kdb/kdb_io.c b/kernel/debug/kdb/kdb_io.c
index 61c1690058ed..c399f11740ef 100644
--- a/kernel/debug/kdb/kdb_io.c
+++ b/kernel/debug/kdb/kdb_io.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Independent Console I/O handler
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (c) 1999-2006 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
  */
diff --git a/kernel/debug/kdb/kdb_keyboard.c b/kernel/debug/kdb/kdb_keyboard.c
index 386d30e530b7..c7ebcb9e9d8f 100644
--- a/kernel/debug/kdb/kdb_keyboard.c
+++ b/kernel/debug/kdb/kdb_keyboard.c
@@ -1,9 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Dependent Console I/O handler
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.
- *
  * Copyright (c) 1999-2006 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
  */
diff --git a/kernel/debug/kdb/kdb_main.c b/kernel/debug/kdb/kdb_main.c
index dddf2b5aad57..314787fb8ce7 100644
--- a/kernel/debug/kdb/kdb_main.c
+++ b/kernel/debug/kdb/kdb_main.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Independent Main Code
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (C) 1999-2004 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (C) 2000 Stephane Eranian <eranian@hpl.hp.com>
  * Xscale (R) modifications copyright (C) 2003 Intel Corporation.
diff --git a/kernel/debug/kdb/kdb_private.h b/kernel/debug/kdb/kdb_private.h
index a2fc7d2bc9fc..92a28b8ab604 100644
--- a/kernel/debug/kdb/kdb_private.h
+++ b/kernel/debug/kdb/kdb_private.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _KDBPRIVATE_H
 #define _KDBPRIVATE_H
 
diff --git a/kernel/debug/kdb/kdb_support.c b/kernel/debug/kdb/kdb_support.c
index 56f7b906e7cc..0a2e54e77ce6 100644
--- a/kernel/debug/kdb/kdb_support.c
+++ b/kernel/debug/kdb/kdb_support.c
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Kernel Debugger Architecture Independent Support Functions
  *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file "COPYING" in the main directory of this archive
- * for more details.
- *
  * Copyright (c) 1999-2004 Silicon Graphics, Inc.  All Rights Reserved.
  * Copyright (c) 2009 Wind River Systems, Inc.  All Rights Reserved.
  * 03/02/13    added new 2.5 kallsyms <xavier.bru@bull.net>
-- 
2.43.0


