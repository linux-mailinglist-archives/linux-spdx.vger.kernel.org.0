Return-Path: <linux-spdx+bounces-97-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC01BBBE151
	for <lists+linux-spdx@lfdr.de>; Mon, 06 Oct 2025 14:46:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E08BF3AB2E6
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Oct 2025 12:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACD65281358;
	Mon,  6 Oct 2025 12:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="L8/csxdT"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D88A199237
	for <linux-spdx@vger.kernel.org>; Mon,  6 Oct 2025 12:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759754759; cv=none; b=lVZp4At+4bxCd3b8bo+J3n/ozcN57TGAZ6GdpeM6PSp1B0DMe9kn1JRH8on2jlfVM9dUww8Ev9IPyipnmWJRteXMMZxBdgfJUQwm1Svm2+moW5DabHph82YqF7yXoOPSdmf3lZXCesIyS/5eiK/0Ro8ZnexRHkpdgjc9FMyy5mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759754759; c=relaxed/simple;
	bh=dowsEgkJEPFVps0A+4frkFrOAiG3M+0V/cXl6r9uJ+g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eLVMI/0uzMcgYOeu07FyugYONwYcW6tZDtZZUMOu8dA+n7dx/Yi8zaaGpDoGV94QHwi74hUZU2hriBKKnVAz+7xnaqWrZfz+aObcvBME2omPzzWSQKtzLT6Ix+ZVazts/4etrHAy/0V2tqXUqjP4EMFlw+cXqQdP9HW07UOn08k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=L8/csxdT; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759754756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=e5xUZ0eK02mfwYoJpN5cCKtC1+gotIbcy90LjoDdTiQ=;
	b=L8/csxdTewcu/Hx002n4PcLUmR63R3h2SeOV5bD5dFK1pe2Ze+gDeI9lGr7lcyEhI+lzOG
	BgOCsG6ITL8wTZSrv8oJNPlY26BCNiD2zEU2bh45N2z6zwwcMS3CiDLWVCtkVXIDGU8uNf
	h0e+vCF/MA1jwpLMtd5k0Qrf9vpOCd4=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-WoUDYdFpMF6oEUrJAPwvjQ-1; Mon,
 06 Oct 2025 08:45:53 -0400
X-MC-Unique: WoUDYdFpMF6oEUrJAPwvjQ-1
X-Mimecast-MFC-AGG-ID: WoUDYdFpMF6oEUrJAPwvjQ_1759754752
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E3F5D1956058;
	Mon,  6 Oct 2025 12:45:51 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.44.34.132])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id CC72A1955F19;
	Mon,  6 Oct 2025 12:45:49 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-spdx@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH] LICENSES: Add modern form of the LGPL-2.1 tags to the usage guide section
Date: Mon,  6 Oct 2025 14:45:48 +0200
Message-ID: <20251006124548.167944-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17

From: Thomas Huth <thuth@redhat.com>

The modern forms of the LGPL-2.1 tags have already been added as valid
a long time ago, see commit bc128349588d5 ("LICENSES/LGPL-2.1: Add
LGPL-2.1-or-later as valid identifiers"). However, the information is
still missing in the "Usage-Guide" section, so it can currently be
confusing whether these tags are allowed in new files or not. Thus
add the tags to the usage guide section, too, to make this clear
(similar to what we do in the GPL-2.0 file already).

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/preferred/LGPL-2.1 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/LICENSES/preferred/LGPL-2.1 b/LICENSES/preferred/LGPL-2.1
index 105b9f3c5ba12..4d1d06a0e8ffe 100644
--- a/LICENSES/preferred/LGPL-2.1
+++ b/LICENSES/preferred/LGPL-2.1
@@ -9,9 +9,13 @@ Usage-Guide:
   guidelines in the licensing rules documentation.
   For 'GNU Lesser General Public License (LGPL) version 2.1 only' use:
     SPDX-License-Identifier: LGPL-2.1
+  or:
+    SPDX-License-Identifier: LGPL-2.1-only
   For 'GNU Lesser General Public License (LGPL) version 2.1 or any later
   version' use:
     SPDX-License-Identifier: LGPL-2.1+
+  or:
+    SPDX-License-Identifier: LGPL-2.1-or-later
 License-Text:
 
 GNU LESSER GENERAL PUBLIC LICENSE
-- 
2.51.0


