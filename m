Return-Path: <linux-spdx+bounces-131-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 88916D3A699
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 12:18:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0FFE30449A3
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 11:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89C0B3596EC;
	Mon, 19 Jan 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFhqM6kv"
X-Original-To: linux-spdx@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668F430AAD6;
	Mon, 19 Jan 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768821293; cv=none; b=um5FKnANrg3g8EgMm+hNMsl8LTuvLw8w5k8OQ8e8nBFI6WcAdJWHlh19wJCNRNHtkwO1eJL2pOEJUaUwZiEat2oh9r9aE6/1+A00gouDSIHSpc9sN5b+XnuMS256kKPJ5OpWRVDflLVsTdgc770QHiRPY5yku5iV3wySCMgbGkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768821293; c=relaxed/simple;
	bh=4mxQthn4Tg5q7S/M58Kd8cnS4v6txzVr6RszyUOe69A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hFw0Fxkg8L1yXSUYLbtAi9KSIxnZZPlCFgoMtDnFRCHbE1j+L5bRfmsmV/jUXfzUPL2ll8qApvf6+pamUZ9JmOCTiCqR4NBDLfAA577XRGRkvXj+5kJrNzmBLX8/W8aiW0NH9qy23R6pTKAvL0q8Oa4h4zCVbkkZpocNHlPE1ME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFhqM6kv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC296C116C6;
	Mon, 19 Jan 2026 11:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768821293;
	bh=4mxQthn4Tg5q7S/M58Kd8cnS4v6txzVr6RszyUOe69A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QFhqM6kvhOyCDsycjszNIGEQFWt7bxYAWhmNr47b7bOkqtO4lTs8zkbc1kTI20J6S
	 K1g5TkGcy2c6k+YEIOREMQMpanFaVFq5evlwhlzfpPbBRmUW4RvEqJ5ddheeRle5mQ
	 4tKEQW5KjOkyuMqHeC8zFIajZOXqSjABoUPKeekz73JfweiSl/prLfm/sDwQ9h4Trd
	 sVHSnegaWXWw2bjoXQaMZ3RVNgY3d+LhRA+kY42fQpBHSvJJBZEahCpi+uNThR2QHK
	 5Ovkyu8VK592pacR3i00M+mT6EsgJUQN6fS+Mtk++sPw6JjwhgxfJ19+iMWuVh/FuU
	 /8xk9jnK1cF8Q==
From: Christian Brauner <brauner@kernel.org>
To: Tim Bird <tim.bird@sony.com>
Cc: Christian Brauner <brauner@kernel.org>,
	linux-spdx@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	michal.wronski@gmail.com,
	golbi@mat.uni.torun.pl,
	manfred@colorfullife.com,
	neil@brown.name,
	viro@zenivlinux.ork.uk
Subject: Re: [PATCH] ipc: Add SPDX license id to mqueue.c
Date: Mon, 19 Jan 2026 12:14:37 +0100
Message-ID: <20260119-heimcomputer-antiseptisch-d26168914a0d@brauner>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260117202759.692347-1-tim.bird@sony.com>
References: <20260117202759.692347-1-tim.bird@sony.com>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=918; i=brauner@kernel.org; h=from:subject:message-id; bh=4mxQthn4Tg5q7S/M58Kd8cnS4v6txzVr6RszyUOe69A=; b=owGbwMvMwCU28Zj0gdSKO4sYT6slMWTmCakfrxQLvi16Yu2Txz49CcK5kocjj+7yfLQkt6qvr 3iDWOivjlIWBjEuBlkxRRaHdpNwueU8FZuNMjVg5rAygQxh4OIUgIkUfGb4H3Vy9vGYL7fnxL13 6V940Cg6+1eu0oe6rqcJ+5eFqW9vNWJkeHTdbu38vc9uXGC2a+IV73jJGrfzwXUNM7n5F3KXz24 y4wIA
X-Developer-Key: i=brauner@kernel.org; a=openpgp; fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
Content-Transfer-Encoding: 8bit

On Sat, 17 Jan 2026 13:27:59 -0700, Tim Bird wrote:
> Add GPL-2.0 license id to file, replacing reference to
> GPL in the header comment.
> 
> 

Applied to the kernel-7.0.misc branch of the vfs/vfs.git tree.
Patches in the kernel-7.0.misc branch should appear in linux-next soon.

Please report any outstanding bugs that were missed during review in a
new review to the original patch series allowing us to drop it.

It's encouraged to provide Acked-bys and Reviewed-bys even though the
patch has now been applied. If possible patch trailers will be updated.

Note that commit hashes shown below are subject to change due to rebase,
trailer updates or similar. If in doubt, please check the listed branch.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git
branch: kernel-7.0.misc

[1/1] ipc: Add SPDX license id to mqueue.c
      https://git.kernel.org/vfs/vfs/c/f54c7e54d2de

