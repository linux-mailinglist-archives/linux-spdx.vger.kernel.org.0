Return-Path: <linux-spdx+bounces-133-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE7ED3BAFB
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 23:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C7D6B302758B
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 22:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAC1E271456;
	Mon, 19 Jan 2026 22:40:53 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2561E32A2
	for <linux-spdx@vger.kernel.org>; Mon, 19 Jan 2026 22:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768862453; cv=none; b=AF/CV+cpXc/eGZ4nxz2pkkjV0cNllOMXXirv5OlIpPKwHNeuFEd81ektchTBYguOYnFw2/Uhw3G+Qo/gY/wtEzKNV5WnpfWQcm3gwvHinWQQl6Tgi/1mf00TWHRqVXSoOBSspbWeHTOiNHAsBkzRaxh7KM+uixz+uP79XgES5pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768862453; c=relaxed/simple;
	bh=D1SAt/Pm2+W3RdTNteARngULz5LgK7NSbTjrQCivRn0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FteuxBAuZJPrH4Yh3c2FPy2vZTDp+oKR8jJUBuLuTt/2shsvc6w3DI4mbqK7PsT5So/hQWNtSBDNkNpVB2hKgInMASYwQ81cb0/sLnXZrqlH/RTxO9hZK4AeA307zCQV9U3Wvf+DSBOjhF2ho0zMitSzr777Q121ROQXX6qrPzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5003b.ext.cloudfilter.net ([10.0.29.155])
	by cmsmtp with ESMTPS
	id hwfev7Lk4SkcfhxvQvorPU; Mon, 19 Jan 2026 22:40:44 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id hxvPv7GbE2l0khxvQvWECW; Mon, 19 Jan 2026 22:40:44 +0000
X-Authority-Analysis: v=2.4 cv=UfRRSLSN c=1 sm=1 tr=0 ts=696eb2ec
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=x39xcJdIAAAA:8 a=_ZhYKdCeAAAA:8
 a=Ye4B9Piu8SXky65a7lAA:9 a=lZ9kT4By1ObJQgvuf1ma:22 a=uqOk3ZSnBfCTOznnrPA1:22
 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=58166 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vhxvN-00000001aD5-41Ji;
	Mon, 19 Jan 2026 15:40:42 -0700
From: Tim Bird <tim.bird@sony.com>
To: rusty@rustcorp.com.au,
	karim.yaghmour@opersys.com,
	akpm@linuxfoundation.org,
	tglx@kernel.org
Cc: kernelxing@tencent.com,
	peterz@infradead.org,
	linux-spdx@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH v2] kernel: Add SPDX-License-Identifier lines
Date: Mon, 19 Jan 2026 15:40:21 -0700
Message-ID: <20260119224021.793309-1-tim.bird@sony.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260113234405.539422-1-tim.bird@sony.com>
References: <20260113234405.539422-1-tim.bird@sony.com>
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
X-Exim-ID: 1vhxvN-00000001aD5-41Ji
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:58166
X-Source-Auth: tim@bird.org
X-Email-Count: 3
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfASitxrZvfZTMwwaNpzfeKS4rX+VZpJkObjIHs2cs1xJQxoiuIEkq10GV4TxplbCOVGCUTCQYbxEyUcz6jnGLjQTpHrSPe3o+2sTXo9UzvnKTTgjcHnV
 n/QX6gAJWQ4ATm9uwiwPbD1wPQcnYtszl3M9HOUzmXIl5OZYrqjbd1B6Oo5cMt7S2auW93O2d9OeUbLgwZ8zqYCKB/UkN2t15KI=

Add SPDX-License-Identifier lines to some old kernel
files.

Signed-off-by: Tim Bird <tim.bird@sony.com>
Acked-by: Karim Yaghmour <karim.yaghmour@opersys.com>
--
V1 -> V2  Use GPL-2.0-or-later for cpu.c
---
 kernel/cpu.c   | 3 +--
 kernel/relay.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/kernel/cpu.c b/kernel/cpu.c
index 8df2d773fe3b..a7a1cf8ea8e0 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /* CPU control.
  * (C) 2001, 2002, 2003, 2004 Rusty Russell
- *
- * This code is licenced under the GPL.
  */
 #include <linux/sched/mm.h>
 #include <linux/proc_fs.h>
diff --git a/kernel/relay.c b/kernel/relay.c
index e36f6b926f7f..6ed6bc929bf9 100644
--- a/kernel/relay.c
+++ b/kernel/relay.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Public API and common code for kernel->userspace relay file support.
  *
@@ -9,8 +10,6 @@
  * Moved to kernel/relay.c by Paul Mundt, 2006.
  * November 2006 - CPU hotplug support by Mathieu Desnoyers
  * 	(mathieu.desnoyers@polymtl.ca)
- *
- * This file is released under the GPL.
  */
 #include <linux/errno.h>
 #include <linux/stddef.h>
-- 
2.43.0


