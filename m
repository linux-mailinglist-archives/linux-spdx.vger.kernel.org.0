Return-Path: <linux-spdx+bounces-123-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 241BAD3891E
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 23:17:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6CB3302D382
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 22:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FFD91D8DFB;
	Fri, 16 Jan 2026 22:17:04 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E6118DB2A
	for <linux-spdx@vger.kernel.org>; Fri, 16 Jan 2026 22:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768601824; cv=none; b=ULxes1PwaQFmdeIrV6lnlSzKo4OUEALNOE3fyFBB+Ll7FxQ8+ZzKjkFdlNxUdNyB2VCg/OkqVxXS7xwdFk9105XIjGgEJ2tBKvCNVC6BF9gSwehx0XY3LF/lhNkHgoAVbuXsMThAQVQspIdKU4JWJCcA5JpCn91PU/jHQDvhDvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768601824; c=relaxed/simple;
	bh=CbeX02NhDE0GcVNY6XOYrquGhG/WtNX3+jxcKai4IyI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Yd0undpEOYd9ksIso7kUcWxGBB1RiDVpWbMvXexkLivyx5zKlcgSD2YjG2WlIqHdkxgdArRTVsrzrjCTZvDvLMZ9DHB0SAeLODR7ZPAaN6YCi+g5YhG/ofDgJYaXV3UeYvaxVCT9v19uJqqiMSYdQDj04QKSWWE98WCbIQpBhAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5006b.ext.cloudfilter.net ([10.0.29.217])
	by cmsmtp with ESMTPS
	id go7BvrFf7Kjfogs7qvxWNZ; Fri, 16 Jan 2026 22:17:02 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id gs7pvANZNOs9Rgs7pvMuwA; Fri, 16 Jan 2026 22:17:01 +0000
X-Authority-Analysis: v=2.4 cv=HPPDFptv c=1 sm=1 tr=0 ts=696ab8dd
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=BH9RyZABvDr3Svwzee0A:9
 a=T_RoKQtpI8J9R3_XKFUd:22 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=49730 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vgs7n-00000001bqI-1H7k;
	Fri, 16 Jan 2026 15:16:59 -0700
From: Tim Bird <tim.bird@sony.com>
To: mingo@redhat.com,
	peterz@infradead.com,
	will@kernel.org,
	boqun.feng@gmail.com,
	longman@redhat.com
Cc: linux-spdx@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: locking: Add SPDX license ids to some files
Date: Fri, 16 Jan 2026 15:16:47 -0700
Message-ID: <20260116221647.666552-1-tim.bird@sony.com>
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
X-Exim-ID: 1vgs7n-00000001bqI-1H7k
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:49730
X-Source-Auth: tim@bird.org
X-Email-Count: 3
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfOQmxKgPbnwTs6FyPky1k9z09NQvKbaChpQXvFTASI1xZaUNdSQ6EtzFZvgVRkaRq23SSl+vm05lhjvcwFXAMfzfisstwxgtOxJBhuPWWlH1xty1eXTo
 s/g3ZVN+UcV/bDBjvT2a2o6x69y3ZxpXgOR4YTofd4R82k4C+EIdz5cNir6PSaH1IWF0TI6yuTNRQNotfnZGGJ2rC00crjJLOfs=

Add GPL-2.0 license id to several files related to kernel
locking and lock debugging.  Remove less formal references
to the GPL license.

Most of these files (with the exception of some files for
'fast headers' work) were introduced in the kernel between
2005 and 2009.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 include/linux/mutex_api.h          | 1 +
 include/linux/spinlock_api.h       | 1 +
 include/linux/spinlock_api_smp.h   | 2 +-
 include/linux/spinlock_api_up.h    | 2 +-
 include/linux/spinlock_types.h     | 2 +-
 include/linux/spinlock_types_raw.h | 1 +
 include/linux/spinlock_types_up.h  | 2 +-
 include/linux/spinlock_up.h        | 2 +-
 kernel/locking/lockdep_states.h    | 1 +
 kernel/locking/mutex-debug.c       | 2 +-
 kernel/locking/spinlock_debug.c    | 2 +-
 11 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/include/linux/mutex_api.h b/include/linux/mutex_api.h
index 85ab9491e13e..4d401f60efae 100644
--- a/include/linux/mutex_api.h
+++ b/include/linux/mutex_api.h
@@ -1 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/mutex.h>
diff --git a/include/linux/spinlock_api.h b/include/linux/spinlock_api.h
index 6338b27f98df..4f5800af7d60 100644
--- a/include/linux/spinlock_api.h
+++ b/include/linux/spinlock_api.h
@@ -1 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #include <linux/spinlock.h>
diff --git a/include/linux/spinlock_api_smp.h b/include/linux/spinlock_api_smp.h
index 9ecb0ab504e3..4c20255ae734 100644
--- a/include/linux/spinlock_api_smp.h
+++ b/include/linux/spinlock_api_smp.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_API_SMP_H
 #define __LINUX_SPINLOCK_API_SMP_H
 
@@ -12,7 +13,6 @@
  * (implemented in kernel/spinlock.c)
  *
  * portions Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  */
 
 int in_lock_functions(unsigned long addr);
diff --git a/include/linux/spinlock_api_up.h b/include/linux/spinlock_api_up.h
index 819aeba1c87e..2cd248855a3c 100644
--- a/include/linux/spinlock_api_up.h
+++ b/include/linux/spinlock_api_up.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_API_UP_H
 #define __LINUX_SPINLOCK_API_UP_H
 
@@ -11,7 +12,6 @@
  * spinlock API implementation on UP-nondebug (inlined implementation)
  *
  * portions Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  */
 
 #define in_lock_functions(ADDR)		0
diff --git a/include/linux/spinlock_types.h b/include/linux/spinlock_types.h
index 2dfa35ffec76..9fd1ad956f9e 100644
--- a/include/linux/spinlock_types.h
+++ b/include/linux/spinlock_types.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_TYPES_H
 #define __LINUX_SPINLOCK_TYPES_H
 
@@ -6,7 +7,6 @@
  *                                  and initializers
  *
  * portions Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  */
 
 #include <linux/spinlock_types_raw.h>
diff --git a/include/linux/spinlock_types_raw.h b/include/linux/spinlock_types_raw.h
index 91cb36b65a17..d32c0cf8eaf7 100644
--- a/include/linux/spinlock_types_raw.h
+++ b/include/linux/spinlock_types_raw.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_TYPES_RAW_H
 #define __LINUX_SPINLOCK_TYPES_RAW_H
 
diff --git a/include/linux/spinlock_types_up.h b/include/linux/spinlock_types_up.h
index fc4e2d017c20..9633e7540423 100644
--- a/include/linux/spinlock_types_up.h
+++ b/include/linux/spinlock_types_up.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_TYPES_UP_H
 #define __LINUX_SPINLOCK_TYPES_UP_H
 
@@ -9,7 +10,6 @@
  * include/linux/spinlock_types_up.h - spinlock type definitions for UP
  *
  * portions Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  */
 
 #ifdef CONFIG_DEBUG_SPINLOCK
diff --git a/include/linux/spinlock_up.h b/include/linux/spinlock_up.h
index 1e84e71ca495..869828b458b5 100644
--- a/include/linux/spinlock_up.h
+++ b/include/linux/spinlock_up.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef __LINUX_SPINLOCK_UP_H
 #define __LINUX_SPINLOCK_UP_H
 
@@ -12,7 +13,6 @@
  * include/linux/spinlock_up.h - UP-debug version of spinlocks.
  *
  * portions Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  *
  * In the debug case, 1 means unlocked, 0 means locked. (the values
  * are inverted, to catch initialization bugs)
diff --git a/kernel/locking/lockdep_states.h b/kernel/locking/lockdep_states.h
index 35ca09f2ed0b..45ff0b6d3172 100644
--- a/kernel/locking/lockdep_states.h
+++ b/kernel/locking/lockdep_states.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Lockdep states,
  *
diff --git a/kernel/locking/mutex-debug.c b/kernel/locking/mutex-debug.c
index 2c6b02d4699b..3c8ccc8a3af9 100644
--- a/kernel/locking/mutex-debug.c
+++ b/kernel/locking/mutex-debug.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Debugging code for mutexes
  *
@@ -8,7 +9,6 @@
  * lock debugging, locking tree, deadlock detection started by:
  *
  *  Copyright (C) 2004, LynuxWorks, Inc., Igor Manyilov, Bill Huey
- *  Released under the General Public License (GPL).
  */
 #include <linux/mutex.h>
 #include <linux/delay.h>
diff --git a/kernel/locking/spinlock_debug.c b/kernel/locking/spinlock_debug.c
index 2338b3adfb55..c89325903e57 100644
--- a/kernel/locking/spinlock_debug.c
+++ b/kernel/locking/spinlock_debug.c
@@ -1,6 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright 2005, Red Hat, Inc., Ingo Molnar
- * Released under the General Public License (GPL).
  *
  * This file contains the spinlock/rwlock implementations for
  * DEBUG_SPINLOCK.
-- 
2.43.0


