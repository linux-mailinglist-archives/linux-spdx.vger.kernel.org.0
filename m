Return-Path: <linux-spdx+bounces-100-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F7ACAAFE3
	for <lists+linux-spdx@lfdr.de>; Sun, 07 Dec 2025 01:45:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B96743005BBD
	for <lists+linux-spdx@lfdr.de>; Sun,  7 Dec 2025 00:45:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE66521D011;
	Sun,  7 Dec 2025 00:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="A60eFHNh"
X-Original-To: linux-spdx@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0C921C9FD;
	Sun,  7 Dec 2025 00:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765068313; cv=none; b=Rez6IoT0jfK+068s7m8+VjkzXg1P1yzQUjgNenqgTn6GjqTe3hyryDSLbciXPb9Kj9/ty2mgVtUA9i3Pc1TFN0q+IhAJwk48jNQw8qwY3FEi5di7wrv946Zu6xQ9RwPOPwKLpoNPHPpx96/xlflmLgvhuJLyhhzBO0MHPSxIuzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765068313; c=relaxed/simple;
	bh=4/TmN59JTFe9pM5OJdR82xB3uYeog56EjSHQP39Jurs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ih3Ik3lYcUSB3+0AXgHcRzUgQlmvDhsWWulQGvkshCuAUuW27IhRmPLx6SkVvJVaTxg3lUKcPNDVn4K2VmG9JjBpnx4OusGPlNZ6ruRPN/sbt78iP4At/j1RWUgl+evFsZf49pGt1LqXKFSpVTerV37qm+OpC/zxLR2CADfesOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=A60eFHNh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0080DC4CEF5;
	Sun,  7 Dec 2025 00:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1765068312;
	bh=4/TmN59JTFe9pM5OJdR82xB3uYeog56EjSHQP39Jurs=;
	h=Date:From:To:Cc:Subject:From;
	b=A60eFHNhkRHlWqUS58xE3hMPEklzpnNi5SyP0glE4KIbmmu6yIcxUtfa+A60jR8NB
	 DprKNKjrh9mUjVhoMc7JJU3P5qQdlNRUN8wXKz1U+drnACGVHeudEahSrcol/egQF1
	 6oe1bheOVdG2nXVfib55YOcL3jBhxoIqkGlgq8zo=
Date: Sun, 7 Dec 2025 09:45:10 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	linux-spdx@vger.kernel.org
Subject: [GIT PULL] SPDX/LICENSES update for 6.19-rc1
Message-ID: <aTTOFjcK2SMZ8MQs@kroah.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The following changes since commit 211ddde0823f1442e4ad052a2f30f050145ccada:

  Linux 6.18-rc2 (2025-10-19 15:19:16 -1000)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/spdx.git tags/spdx-6.19-rc1

for you to fetch changes up to 89373f5695dc918a0118fa71ee4dc423bc8c8476:

  LICENSES: Add modern form of the LGPL-2.1 tags to the usage guide section (2025-10-22 07:58:19 +0200)

----------------------------------------------------------------
SPDX License update for 6.19-rc1

Here is a single patch that updates the LGPL-2.1 license text with the
"alternate" SPDX tags that are allowed for this license type.

It's been in linux-next for a very long time with no reported issues

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Thomas Huth (1):
      LICENSES: Add modern form of the LGPL-2.1 tags to the usage guide section

 LICENSES/preferred/LGPL-2.1 | 4 ++++
 1 file changed, 4 insertions(+)

