Return-Path: <linux-spdx+bounces-74-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 68899B0C119
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DA8D18914BA
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0934D28EA7C;
	Mon, 21 Jul 2025 10:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="aotRnkGD"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681B528EA53
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092958; cv=none; b=WhPoVef4YLOyiAzCDlZfDK+6WI0y0PmasXnpQnH8tIHTb/tW9PNXxGnpgLgPUc9ec/dJdzyX3/n5epxyVgG64hnVumakIp9DFPjFOjVM3ktmie++2AhzeM8dhJpAS5CsQeU3tP4BSGNM7OoiI7nNe5N89GwBNoq/UcDzsx9NezM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092958; c=relaxed/simple;
	bh=Vv8fKjUeWuIkFtO6hzHx4yhJEgkiU3r4OwC5akQ4060=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=H+m27cs4ANJl1V66YYz5SwXZy60xSiYW3YoIZLiV0QbbnMUER3koScPkTKCbm2H+Mkt6VUxZFxDYDy6SP2ZYgOQS8sHnyPgNALJnytKfD4H8dmGk7QfVHevFzGrnDDsTChpZdHGq69S8wbDespKalqHkpngarGJPXI2/mh4gtbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=aotRnkGD; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IWmBnCsRfjInbUnfQuNAZTbDNElc69Dx2KOZ2GAp3Kw=;
	b=aotRnkGDe9qa7/VUtotFpMJIZ+spE6ep3ZGTzald/gbXpntZZ9D6LCnotRIGzm8vkU/Qxk
	ivqGzyAYeVmpf5NsmJtz1/zJ1DtOgoxcqgYfTUreDf8HBGbxYdUYM2yXLPRkouUWXHgPi6
	SFoVJTnUD8/uMymj1Y7m3oUXRM0JxUU=
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-641-qA-03wqvPruXvD3U_weviA-1; Mon,
 21 Jul 2025 06:15:53 -0400
X-MC-Unique: qA-03wqvPruXvD3U_weviA-1
X-Mimecast-MFC-AGG-ID: qA-03wqvPruXvD3U_weviA_1753092952
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 02C7A19560A2;
	Mon, 21 Jul 2025 10:15:52 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 2C51B18016F9;
	Mon, 21 Jul 2025 10:15:49 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/6] LICENSES: Replace the obsolete address of the FSF in the LGPL-2.1
Date: Mon, 21 Jul 2025 12:15:35 +0200
Message-ID: <20250721101537.276552-5-thuth@redhat.com>
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
revisions of their LGPL-2.1 license:
https://www.gnu.org/licenses/old-licenses/lgpl-2.1.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/preferred/LGPL-2.1 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/LICENSES/preferred/LGPL-2.1 b/LICENSES/preferred/LGPL-2.1
index b73f9b6230f52..105b9f3c5ba12 100644
--- a/LICENSES/preferred/LGPL-2.1
+++ b/LICENSES/preferred/LGPL-2.1
@@ -18,7 +18,7 @@ GNU LESSER GENERAL PUBLIC LICENSE
 Version 2.1, February 1999
 
 Copyright (C) 1991, 1999 Free Software Foundation, Inc.
-51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
+<https://fsf.org/>
 
 Everyone is permitted to copy and distribute verbatim copies of this
 license document, but changing it is not allowed.
@@ -488,9 +488,9 @@ FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License
 for more details.
 
 You should have received a copy of the GNU Lesser General Public License
-along with this library; if not, write to the Free Software Foundation,
-Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA Also add
-information on how to contact you by electronic and paper mail.
+along with this library; if not, see <https://www.gnu.org/licenses/>.
+
+Also add information on how to contact you by electronic and paper mail.
 
 You should also get your employer (if you work as a programmer) or your
 school, if any, to sign a "copyright disclaimer" for the library, if
-- 
2.50.0


