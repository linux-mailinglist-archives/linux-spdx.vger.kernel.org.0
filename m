Return-Path: <linux-spdx+bounces-112-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC0ED1BBE3
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 00:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1E61B3045485
	for <lists+linux-spdx@lfdr.de>; Tue, 13 Jan 2026 23:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA32A36A039;
	Tue, 13 Jan 2026 23:44:25 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta34.uswest2.a.cloudfilter.net (omta34.uswest2.a.cloudfilter.net [35.89.44.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E451355036
	for <linux-spdx@vger.kernel.org>; Tue, 13 Jan 2026 23:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768347865; cv=none; b=I7YhaXkBBuLo5Rsfp2cwyrORX4Gz2xUwTZSot+VatHM4/bloJaQAfBzFgeWX5o/k2TS7MBe7lC36QtRs0cdeY1O/iweePe2W6jbi9PMFtxppCrFsTxu7H2MddYNPdOJ1rdZiikT1LMKlirVXqwUAlL1+kiNbG9ACUlS5TWjrmCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768347865; c=relaxed/simple;
	bh=NHlqLSKTQdmTjPTCli5lxUQ6D35ipS88brfqDnFNUUY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nMXiTXi53g2J1WfF5p5UuFaHqMDrRFlg16hu8PI+NdP7t/VdSInkNFW+nLv3goPchE+C6xk+ork6KMw9dZlJUm+42Vw5n06K8vDY2n/A450yfid4p8frD1TbNfaa/siee9b0t4kl/5uOtAwyaiZtAOFi1Z25FZF1m+G6Mrb0KqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=35.89.44.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-6006b.ext.cloudfilter.net ([10.0.30.211])
	by cmsmtp with ESMTPS
	id flBQvXqZGKjfofo3dvQ2Vt; Tue, 13 Jan 2026 23:44:17 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id fo3cvVXu1vXvHfo3dvaDA5; Tue, 13 Jan 2026 23:44:17 +0000
X-Authority-Analysis: v=2.4 cv=e4IGSbp/ c=1 sm=1 tr=0 ts=6966d8d1
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=_ZhYKdCeAAAA:8 a=Ye4B9Piu8SXky65a7lAA:9
 a=uqOk3ZSnBfCTOznnrPA1:22 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=58892 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vfo3a-000000039bP-0jcZ;
	Tue, 13 Jan 2026 16:44:14 -0700
From: Tim Bird <tim.bird@sony.com>
To: karim@opersys.com,
	akpm@linuxfoundation.org,
	rusty@rustcorp.com.au,
	tglx@kernel.org
Cc: tom.zanussi@linux.intel.com,
	kernelxing@tencent.com,
	perterz@infradead.org,
	linux-spdx@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: add SPDX-License-Identifier lines
Date: Tue, 13 Jan 2026 16:44:05 -0700
Message-ID: <20260113234405.539422-1-tim.bird@sony.com>
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
X-Exim-ID: 1vfo3a-000000039bP-0jcZ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:58892
X-Source-Auth: tim@bird.org
X-Email-Count: 3
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfNwZx3HO56V5qjeEAPJQjVc/huEpt7UPcVTf7Gst9837ixIAWi3Sb9fQ4SwlmUkFzFOrc+ymyY2wR357DSGd0uISV7NV63QTP+usNhTIzPv9FvLYBRFd
 G67qTyCn/KYy7KuX3pWSNPrOcX2t4KkI0gngwOV/ZwF0rqJADZxeuvcf7Ajj6InlaEH6MqEmORyoKH/Or7z9YN1njgXdz6EdnHM=

Add SPDX-License-Identifier lines to some old kernel
files.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 kernel/cpu.c   | 3 +--
 kernel/relay.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/kernel/cpu.c b/kernel/cpu.c
index 8df2d773fe3b..5185c0be847a 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1,7 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
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


