Return-Path: <linux-spdx+bounces-76-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9E5B0C11C
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:16:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D193C18927C6
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3F928DB7A;
	Mon, 21 Jul 2025 10:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jUQslLP9"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594A428ECE0
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092962; cv=none; b=k2WeWkf0r7enpYiongianNFF0ZYWESKx9ZHvdArX+99IwQh5mRJ7iTVJqnVp7JJTssw6w63Uo9wKgFqL+46QKM6B44MLxB1DJiC8WkWap64FF2Sh154cjMyLc5IZZsur1+6C0NrV5fDrEbmG6CevEd7kYo56LHkPv8z5y2su06o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092962; c=relaxed/simple;
	bh=JS1nklxjkM4f9lgybWe3r1PHCL3nq+jC2DMBEleHZw0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q9Vklfmmld5iUyXsHgp9508BTBZrb+EbRmKwF011/dh5KXq7wPYZnXl1q+jIiAv6CoKWaSddHlvX5j0i92Y4IwYN6XOJA9KtA8FHENzHnXYt+wGkFB5WZyXmDhj3B5hU6eKviEHCKCE1t2t62qjyEcb3Blgq6Hy1inABPRiwPiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jUQslLP9; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YL+xG3o57AdS7FU6xOB3eOBLgq+9jizJi10GGiZLccw=;
	b=jUQslLP9reD3DnRkQlAOx8mo9GfBbtCe6gZNBnV7xeSktJNkgOlwLY9uOVPrPc2Y3VDUhw
	xRgj4X8ShzAvfV/kRx29bZKXbunQq3GgEpYyzPhYwACo0+5NLseKvOZFRe0AvB66X2J+ZP
	X4CtCyWPTtpDHRk8FYn6NZL/18zS3XU=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-16-SB9v8FDfOBmCrgPEQqhE6Q-1; Mon,
 21 Jul 2025 06:15:59 -0400
X-MC-Unique: SB9v8FDfOBmCrgPEQqhE6Q-1
X-Mimecast-MFC-AGG-ID: SB9v8FDfOBmCrgPEQqhE6Q_1753092958
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D10E919560AD;
	Mon, 21 Jul 2025 10:15:57 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 9003C180170E;
	Mon, 21 Jul 2025 10:15:55 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] LICENSES: Replace the obsolete address of the FSF in the GFDL-1.2
Date: Mon, 21 Jul 2025 12:15:37 +0200
Message-ID: <20250721101537.276552-7-thuth@redhat.com>
In-Reply-To: <20250721101537.276552-1-thuth@redhat.com>
References: <20250721101537.276552-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

From: Thomas Huth <thuth@redhat.com>

The FSF does not reside in the Franklin street anymore. Let's update
the address with the link to their website, as suggested in the latest
revisions of their GFDL-1.2 license:
https://www.gnu.org/licenses/old-licenses/fdl-1.2.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/deprecated/GFDL-1.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/LICENSES/deprecated/GFDL-1.2 b/LICENSES/deprecated/GFDL-1.2
index b97e99a11d370..5e8fff04af056 100644
--- a/LICENSES/deprecated/GFDL-1.2
+++ b/LICENSES/deprecated/GFDL-1.2
@@ -23,7 +23,7 @@ License-Text:
 
 
  Copyright (C) 2000,2001,2002  Free Software Foundation, Inc.
-     51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
+     <https://fsf.org/>
  Everyone is permitted to copy and distribute verbatim copies
  of this license document, but changing it is not allowed.
 
-- 
2.50.0


