Return-Path: <linux-spdx+bounces-101-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF6DCAB0A2
	for <lists+linux-spdx@lfdr.de>; Sun, 07 Dec 2025 04:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20AF2316FD0F
	for <lists+linux-spdx@lfdr.de>; Sun,  7 Dec 2025 03:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF85E275AF0;
	Sun,  7 Dec 2025 03:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc/M+06/"
X-Original-To: linux-spdx@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9838D274FDB;
	Sun,  7 Dec 2025 03:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765076605; cv=none; b=leB1Dqc2m/stg6Nxqrd43lRVz9dKSl2M8UzkMxHQZALMLsHWvhkyHz5dpnTN8Gxh7TaXy3acH7+6TbiIB9Iav8LWYjfbUVW8HbMPshIxjCnRrgpdZx8GBGUW1p42nw+h16IaC2uf0YismnGQOqeGGCQw0ObgtFcoWp05fmc1dY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765076605; c=relaxed/simple;
	bh=yk8TymR91dgbLpgeiR/9A2DQWWlYIJR9FBNRJJvvBt8=;
	h=Subject:From:In-Reply-To:References:Message-Id:Date:To:Cc; b=u67pw6/ZZTA7OypfHW+16cO9LYeeyX5BZL3rQTTxhtnbS4SQGULRXyzk1w0oAWmw5QHFdZNDmPLD1jxm+WhjLTHM69tYHmED+TTOOnd+PYCLuqtw4IgIus/12kxZ6h2IwrD8wpisVzEthVx7uMSXqYn94YUPRjFmkFXpGCHAIcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc/M+06/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B011C4CEF5;
	Sun,  7 Dec 2025 03:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765076605;
	bh=yk8TymR91dgbLpgeiR/9A2DQWWlYIJR9FBNRJJvvBt8=;
	h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
	b=Nc/M+06/AoeLSP3nXxopFKjwaw23wQET9GljsyVXieUb6MoRtOpiWn/jV0tO/cfMF
	 K5H27Ib3lEI/K5lKs3EH9ZvMekEzVp4+5WYjNfj6wiYqhfwxweYG+u7kufUTXoX7Wg
	 KPIjPClkfIwBahScSAttXvWKrX0tkYLre/Uh9eRQz9EpTFSIOCTBFpQc6sFJVBjxgD
	 6x/UhXDsJJV8/tMZ0GTrOwNPIzYh2R6EHguVVEKjTytmgr+meaFgdE0t+QiOsw+cjT
	 dLccKFx40442IfwA6N72tai0keejCYjOgl+QVXHie6ICOM6Ai02CN9o/0zkf95NJRx
	 7XY7ZJO//HSfg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 78B113808200;
	Sun,  7 Dec 2025 03:00:23 +0000 (UTC)
Subject: Re: [GIT PULL] SPDX/LICENSES update for 6.19-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <aTTOFjcK2SMZ8MQs@kroah.com>
References: <aTTOFjcK2SMZ8MQs@kroah.com>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <aTTOFjcK2SMZ8MQs@kroah.com>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/spdx.git tags/spdx-6.19-rc1
X-PR-Tracked-Commit-Id: 89373f5695dc918a0118fa71ee4dc423bc8c8476
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 701d7d782d98242a64cdeed90750f88ff733bc39
Message-Id: <176507642192.2278937.11712685453332799857.pr-tracker-bot@kernel.org>
Date: Sun, 07 Dec 2025 03:00:21 +0000
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org, linux-spdx@vger.kernel.org
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>

The pull request you sent on Sun, 7 Dec 2025 09:45:10 +0900:

> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/spdx.git tags/spdx-6.19-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/701d7d782d98242a64cdeed90750f88ff733bc39

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

