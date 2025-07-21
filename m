Return-Path: <linux-spdx+bounces-70-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1425B0C110
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 12:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C6A21885CAE
	for <lists+linux-spdx@lfdr.de>; Mon, 21 Jul 2025 10:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29EE217B4EC;
	Mon, 21 Jul 2025 10:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Olq4hHjX"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CB51E50B
	for <linux-spdx@vger.kernel.org>; Mon, 21 Jul 2025 10:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092949; cv=none; b=Cy6GsZcHcDbW/TPzTRRCfk14wCHYjXUeabXuq8Fbm94GNUSEPYcSmbz/gZl6xL9sB4iPyRY7T1/16B7P6uB1fXwtevE9L40i1PgZKEbV651oQ+EukOYFOS90KXdKj2QZyA+IWTVj83lzGhOZfgYi+TmeCulZyknq/RBHSU/bDLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092949; c=relaxed/simple;
	bh=q7Gm9l8oBBitea2BKiM1Emp3uRa0BGdxji1wlX88KMo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kwKS+OFzMLbAvVpvVXZyIVW/EU+mxw45L2EgQWF9ETXAPWok8MS34wySC/FUoftH3KGVGJdwzQ4WfRHoU7jqjZQeERHEhkzjj0hI9nrgHMz8Fl7ypGoMCHngdq48kHr5qu+mEXl9k9r8cA89XQl5WgqOyxMRVke6N28DcaVhObQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Olq4hHjX; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1753092946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yOx1CRlX8cXKvzLc2xM/+ZiyEycaxPxnyk4mfBBaGGA=;
	b=Olq4hHjX71bDM85wUjMbPqitpysZLvoLrzJeNs54lUW69LYOCBkcfjvlIHWGXoy3VSm+bK
	TPBAjSsP3cyloslQzjUeFLBIROVAlmqb38T+J6aAGcA7urSrDaW2tkjJm9Pc7zpYBmJEs5
	K3CQ0knGFKb686x71/1QwA3LLKpFcTI=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-ORebg4EnPb2sMaL4Ox8inA-1; Mon,
 21 Jul 2025 06:15:42 -0400
X-MC-Unique: ORebg4EnPb2sMaL4Ox8inA-1
X-Mimecast-MFC-AGG-ID: ORebg4EnPb2sMaL4Ox8inA_1753092941
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3FF7F19560B7;
	Mon, 21 Jul 2025 10:15:41 +0000 (UTC)
Received: from thuth-p1g4.redhat.com (unknown [10.45.224.77])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 571221800D82;
	Mon, 21 Jul 2025 10:15:38 +0000 (UTC)
From: Thomas Huth <thuth@redhat.com>
To: linux-spdx@vger.kernel.org,
	Thomas Gleixner <tglx@linutronix.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] LICENSES: Replace the obsolete address of the FSF
Date: Mon, 21 Jul 2025 12:15:31 +0200
Message-ID: <20250721101537.276552-1-thuth@redhat.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111

The FSF resides in the Milk Street in Boston nowadays, see:

 https://www.fsf.org/about/contact/mailing

So we should not use the old mailing address in the license texts
anymore. Let's update the addresses with the link to their website,
as suggested in the latest revisions of their licenses.

v2:
- Split into individual patches per license
- Add patches for the GFDL licenses, too

Thomas Huth (6):
  LICENSES: Replace the obsolete address of the FSF in the GPL-1.0
  LICENSES: Replace the obsolete address of the FSF in the GPL-2.0
  LICENSES: Replace the obsolete address of the FSF in the LGPL-2.0
  LICENSES: Replace the obsolete address of the FSF in the LGPL-2.1
  LICENSES: Replace the obsolete address of the FSF in the GFDL-1.1
  LICENSES: Replace the obsolete address of the FSF in the GFDL-1.2

 LICENSES/deprecated/GFDL-1.1 |  2 +-
 LICENSES/deprecated/GFDL-1.2 |  2 +-
 LICENSES/deprecated/GPL-1.0  |  6 +++---
 LICENSES/preferred/GPL-2.0   | 10 ++++------
 LICENSES/preferred/LGPL-2.0  |  5 ++---
 LICENSES/preferred/LGPL-2.1  |  8 ++++----
 6 files changed, 15 insertions(+), 18 deletions(-)

-- 
2.50.0


