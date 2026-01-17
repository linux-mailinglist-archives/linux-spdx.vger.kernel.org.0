Return-Path: <linux-spdx+bounces-129-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B90D390EB
	for <lists+linux-spdx@lfdr.de>; Sat, 17 Jan 2026 21:28:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81E363027817
	for <lists+linux-spdx@lfdr.de>; Sat, 17 Jan 2026 20:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84B402C15A0;
	Sat, 17 Jan 2026 20:28:17 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta38.uswest2.a.cloudfilter.net (omta38.uswest2.a.cloudfilter.net [35.89.44.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF182253B42
	for <linux-spdx@vger.kernel.org>; Sat, 17 Jan 2026 20:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768681697; cv=none; b=C3z4/5bBI83lGxJ7qF4b9BEOoKuYGZfYtZpRw2PSzo7BzEoS0Vqmm5WuBGyjE2ZK1SMH/Gm13leHqLqW81/2bfD7Iz2HR1YTX5txT1govig+aPIS/NJhEtgCganVaz7FUSt3gQLjeSj//PUOPHEmn0EpRzb1n30vLANitbJMygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768681697; c=relaxed/simple;
	bh=CgEqW3SzefxJCendN3Ku2Jn82ktfoKk1X6wm0k64B3U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=F++0QhsJsGm5bapq3rIo3krYfZeMxi+Wa/ezrjD0PB5Qd4NVREx+jBV7P3/DVan+S4qWXuDtaOOv2Rd+oJd6OM2Q3o2k95FKT8klNXloDYICu7tidKljD1WTIezH2ENjwSrP8EkF7TL8WTqTIj/WqK+N227X/ULiCIhDM0tTGWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=35.89.44.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5005b.ext.cloudfilter.net ([10.0.29.189])
	by cmsmtp with ESMTPS
	id h5uNvo9GoipkChCu0v6p8w; Sat, 17 Jan 2026 20:28:09 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id hCu0v3dEsjAxuhCu0vjhwU; Sat, 17 Jan 2026 20:28:08 +0000
X-Authority-Analysis: v=2.4 cv=EoDSrTcA c=1 sm=1 tr=0 ts=696bf0d8
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=MqK6kde1AAAA:8 a=VnNF1IyMAAAA:8
 a=EtehqUjhsAhlR55OudAA:9 a=9aqP8kKXEzZd0rnup5AB:22 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=55662 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vhCty-00000001UGl-041t;
	Sat, 17 Jan 2026 13:28:06 -0700
From: Tim Bird <tim.bird@sony.com>
To: michal.wronski@gmail.com,
	golbi@mat.uni.torun.pl,
	manfred@colorfullife.com,
	brauner@kernel.org,
	neil@brown.name,
	viro@zenivlinux.ork.uk
Cc: linux-spdx@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] ipc: Add SPDX license id to mqueue.c
Date: Sat, 17 Jan 2026 13:27:59 -0700
Message-ID: <20260117202759.692347-1-tim.bird@sony.com>
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
X-Exim-ID: 1vhCty-00000001UGl-041t
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:55662
X-Source-Auth: tim@bird.org
X-Email-Count: 9
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfL7MlZC6i53jxdAS5qfy9KMMyi9SZk4KWXR1cv8tIi1fRRivhFbB84N1dT1Crd6WeLn78M1umWh+DDMQ6LxU0+DY8omNr+2pgd1oepi8VJmrl5865vyE
 sqvmWsT3W9e20DS/fEVhRujrcrhefJOJmtKpedWDRb3EZrtYLck1sA5ZUclErdgHMSdjk5wbgMeT75PvcTjk5JGitVsBeKyvbwM=

Add GPL-2.0 license id to file, replacing reference to
GPL in the header comment.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 ipc/mqueue.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/ipc/mqueue.c b/ipc/mqueue.c
index c4f6d65596cf..da2f6a289cc8 100644
--- a/ipc/mqueue.c
+++ b/ipc/mqueue.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * POSIX message queues filesystem for Linux.
  *
@@ -9,8 +10,6 @@
  *			    Manfred Spraul	    (manfred@colorfullife.com)
  *
  * Audit:                   George Wilson           (ltcgcw@us.ibm.com)
- *
- * This file is released under the GPL.
  */
 
 #include <linux/capability.h>
-- 
2.43.0


