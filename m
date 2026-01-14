Return-Path: <linux-spdx+bounces-115-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDD5D21C00
	for <lists+linux-spdx@lfdr.de>; Thu, 15 Jan 2026 00:23:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C52C3302CF53
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 23:23:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B293938FEFB;
	Wed, 14 Jan 2026 23:23:03 +0000 (UTC)
X-Original-To: linux-spdx@vger.kernel.org
Received: from omta040.useast.a.cloudfilter.net (omta040.useast.a.cloudfilter.net [44.202.169.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BCC38B7D0
	for <linux-spdx@vger.kernel.org>; Wed, 14 Jan 2026 23:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768432980; cv=none; b=oNTUqX2bZ1RCjzxL/zBgQggsBicNE3O6vu0pxQidejTJoIsxdaJgu8cRIpkv52I1oBSLoxP2uE6YxrUsw8qw6XcGJ6M4OEfwDz1iGeiKOH9QETjtfJxGXR2I0e0fXbnOBCxLts56KIL48Y3buhjolaP4krvD/EX/Yj/8uOcF5vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768432980; c=relaxed/simple;
	bh=u898Lcp1FuXk3wlOY/VvFyiXKVlKxrnp6D7HFuBfvPE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=R/1G3zS6QwVsDBwmeiNAUkWrBc69RqCS1X6XnkWakhuDOzgGb2wsAEiAK6AIkPmPoDE1rv6teHd3IIUEwdVxUWjTzIl2sjDJhCB2mEM85mPGK5fkmCnSK5NHuYfgwE0qVG6FAs6ONqNwHeVSRl4MXNQKhGLTUZ8Wm6M+3hedakE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com; spf=fail smtp.mailfrom=sony.com; arc=none smtp.client-ip=44.202.169.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=sony.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=sony.com
Received: from eig-obgw-5006b.ext.cloudfilter.net ([10.0.29.217])
	by cmsmtp with ESMTPS
	id g8PQvJWAnCxrGgACDvYFyM; Wed, 14 Jan 2026 23:22:37 +0000
Received: from host2044.hostmonster.com ([67.20.76.238])
	by cmsmtp with ESMTPS
	id gACDvTA5KOs9RgACDvm6UO; Wed, 14 Jan 2026 23:22:37 +0000
X-Authority-Analysis: v=2.4 cv=HPPDFptv c=1 sm=1 tr=0 ts=6968253d
 a=O1AQXT3IpLm5MaED65xONQ==:117 a=uc9KWs4yn0V/JYYSH7YHpg==:17
 a=vUbySO9Y5rIA:10 a=z6gsHLkEAAAA:8 a=VnNF1IyMAAAA:8 a=oTZ0yMsC93kIkOJjF8UA:9
 a=iekntanDnrheIxGr1pkv:22
Received: from [66.118.46.62] (port=42648 helo=timdesk..)
	by host2044.hostmonster.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <tim.bird@sony.com>)
	id 1vgACA-00000001DR0-3yAe;
	Wed, 14 Jan 2026 16:22:35 -0700
From: Tim Bird <tim.bird@sony.com>
To: clg@redhat.com,
	mhelsley@vmware.com,
	longman@redhat.com,
	tj@kernel.org,
	hannes@cmpxchg.org,
	mkoutny@suse.com
Cc: linux-spdx@vger.kernel.org,
	cgroups@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Tim Bird <tim.bird@sony.com>
Subject: [PATCH] kernel: cgroup: Add LGPL-2.1 SPDX license ID to legacy_freezer.c
Date: Wed, 14 Jan 2026 16:22:08 -0700
Message-ID: <20260114232208.592606-1-tim.bird@sony.com>
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
X-Exim-ID: 1vgACA-00000001DR0-3yAe
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (timdesk..) [66.118.46.62]:42648
X-Source-Auth: tim@bird.org
X-Email-Count: 4
X-Org: HG=bhshared_hm;ORG=bluehost;
X-Source-Cap: YmlyZG9yZztiaXJkb3JnO2hvc3QyMDQ0Lmhvc3Rtb25zdGVyLmNvbQ==
X-Local-Domain: no
X-CMAE-Envelope: MS4xfOQTlWdehDgBU1IW6/gmDnNSvgI0DJezjtYS+LhIQEQBHWTNt3NiTb/YCZgHq7H/GCuhMHaOzJpzPIbU/xCxbUeGTni/8xBpoUh0OYyQzaBMdUN0KFOI
 N7t5mq/shsRz9qC+CJmbt47bQNoqpPmPa/+h6dVimk/qTmNqVe758r8y2v+LUanww6in3qVR8X5mut07NgSYfMqu+b5ykS4ET4Y=

Add an appropriate SPDX-License-Identifier line to the file,
and remove the GNU boilerplate text.

Signed-off-by: Tim Bird <tim.bird@sony.com>
---
 kernel/cgroup/legacy_freezer.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/kernel/cgroup/legacy_freezer.c b/kernel/cgroup/legacy_freezer.c
index 915b02f65980..817c33450fee 100644
--- a/kernel/cgroup/legacy_freezer.c
+++ b/kernel/cgroup/legacy_freezer.c
@@ -1,17 +1,10 @@
+// SPDX-License-Identifier: LGPL-2.1
 /*
  * cgroup_freezer.c -  control group freezer subsystem
  *
  * Copyright IBM Corporation, 2007
  *
  * Author : Cedric Le Goater <clg@fr.ibm.com>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of version 2.1 of the GNU Lesser General Public License
- * as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it would be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  */
 
 #include <linux/export.h>
-- 
2.43.0


