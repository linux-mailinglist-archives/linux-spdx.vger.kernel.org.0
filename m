Return-Path: <linux-spdx+bounces-73-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 580FCB0C118
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 299B83AA500
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74B0A28E56B;
	Mon, 21 Jul 2025 10:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LenOY1Cn"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B7628DF1B
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092956; cv=none; b=RvX8OH+lj39fwlmWFwXPJhHB1zGMWOo52l9y/nTdX1gcqNgB2ubS8EmF/1fGvhV9Y7DMDvDfO/yigk+GsZDk3LAnH0m8HGoPd6kG1pzz5tituFncPM3EM1uvaXBKt55H+B8/eYvbGZHEv5BzPGO5XP6zEmxpSNWemAhOqk9hBhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092956; c=relaxed/simple;
	bh=yaHhUQG9fZNfr7pAgNtY5q2S061vd6ciz8mHZO0cGzI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IDIzU0a7zTLQbaf5FcOLMTXOVOP83faCXj7GYzaSPSSsdh2HEtnK/ZO+oGskfpMYADWFyNYJlFTevdFf4RDfVJ3CqaQdXe1mfhjN2W5umK1JNXUpYas/0JiKWEyiUH7ZRqKMF7QeHwQQ5ReB7/vZuXqEWkbKXET/LcLFiR5negE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LenOY1Cn; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092953;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GI8hof1UmsMFGgxy7NGXL6mMlN9cWMdfaEiozubOAZM=;
	b=LenOY1CnuSJ2w2rXgPzKkXOCL9fqbAk7cK6zSg6XC3+FBe+Ionno8YIcVaPPsHWtLSo7jK
	nuWKCLMsmae4rXB04Wz1bgcO7iao9RdkLx0Hc6Z6Lr7n+CrAJSrayKhdWWmnbkptY6e40r
	Q6/Zqoz7D4Vp6UjiVKH8VH7COPprayE=
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-360-Nf-9jgZoO0-pugUCmjQwOw-1; Mon,
 21 Jul 2025 06:15:50 -0400
X-MC-Unique: Nf-9jgZoO0-pugUCmjQwOw-1
X-Mimecast-MFC-AGG-ID: Nf-9jgZoO0-pugUCmjQwOw_1753092949
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 72E6918001F7;
	Mon, 21 Jul 2025 10:15:49 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 61E3918016F9;
	Mon, 21 Jul 2025 10:15:47 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] LICENSES: Replace the obsolete address of the FSF in the LGPL-2.0
Date: Mon, 21 Jul 2025 12:15:34 +0200
Message-ID: <20250721101537.276552-4-thuth@redhat.com>
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
revisions of their LGPL-2.0 license:
https://www.gnu.org/licenses/old-licenses/lgpl-2.0.txt

Signed-off-by: Thomas Huth <thuth@redhat.com>
---
 LICENSES/preferred/LGPL-2.0 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/LICENSES/preferred/LGPL-2.0 b/LICENSES/preferred/LGPL-2.0
index 957d798fe0372..dc629746eb726 100644
--- a/LICENSES/preferred/LGPL-2.0
+++ b/LICENSES/preferred/LGPL-2.0
@@ -16,7 +16,7 @@ GNU LIBRARY GENERAL PUBLIC LICENSE
 Version 2, June 1991
 
 Copyright (C) 1991 Free Software Foundation, Inc.
-51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA
+<https://fsf.org/>
 
 Everyone is permitted to copy and distribute verbatim copies of this
 license document, but changing it is not allowed.
@@ -468,8 +468,7 @@ FITNESS FOR A PARTICULAR PURPOSE. See the GNU Library General Public
 License for more details.
 
 You should have received a copy of the GNU Library General Public License
-along with this library; if not, write to the Free Software Foundation,
-Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
+along with this library; if not, see <https://www.gnu.org/licenses/>.
 
 Also add information on how to contact you by electronic and paper mail.
 
-- 
2.50.0


