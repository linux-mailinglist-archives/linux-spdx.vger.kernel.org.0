Return-Path: <linux-spdx+bounces-130-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BF8D39DC7
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 06:32:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E80AA30047BD
	for <lists+linux-spdx@lfdr.de>; Mon, 19 Jan 2026 05:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC2E247295;
	Mon, 19 Jan 2026 05:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rustcorp.com.au header.i=@rustcorp.com.au header.b="IvVGbJQC"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B338313A3F7;
	Mon, 19 Jan 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768800756; cv=none; b=jdbadA4W0pvAMUmJs7eJBupPDxuxCxayvx61rxgP1ywpUY3/krP+h6GoiKLvsBGm7ldK3vPLplmO4klpUtUw67/L+eGQNf7B3q3uTcFJYmg09/BIBAJMbJ2UmcH1g3XC65eznoJPEuXUDVPoqpu86JZU8OL0kb9pMx3vo7s8cfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768800756; c=relaxed/simple;
	bh=/rJpco0fis9U6xoi9JfyUf8aHWne/nixKadn8OvxYtc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=hrKeuFti3Tz4+cl6bibdlhwhQcN1WlRh4LYdimqCnv+Nc2G2kLxsWC0e3sg94EoXsx4IC/KzHHoqTQilGrS4LVqLSAmX0Zczs9G10O+gO9Kyq7+gT3nVVZtXaJGpF5/rT8XLc5ySj3zV5gZAAePTzQTYayml2mnhso/oqGdox0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rustcorp.com.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=rustcorp.com.au header.i=@rustcorp.com.au header.b=IvVGbJQC; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rustcorp.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rustcorp.com.au;
	s=202305; t=1768800752;
	bh=Dp7mMrG0130vpzJD8hA+H7PfHk46S3Ctka8m2tCurDE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=IvVGbJQCaedMi2ZXGgPch/JvVMOkYRG2slBUHZUAbzwX7bDD2+iC+HRAzsIt6rGn1
	 KuPQv6Ia2+pgAeIdjLSwZPORTPvITp/ctkXct1i9+QLLJSgQpoIrLV30KHy+AFvyRe
	 mpzdpMxgMArkoEDJf2S+nYV3TmdHra6Z2isTC7sSbhQTQCmT59R2kmGPJzuJwWCMmi
	 NiduhgPOspuhleoXralEoX//PxYZOAhUWptaq/9Bio4oUlP2JCf8A/1aC2ZLirj514
	 yBOt0sm7T56xM5EatV74nVj5TU0UwXCjxfPsh/JoLRTPIfN4TUsuDR8fK48Rur4jIC
	 27yhpZJwI9Bug==
Received: by gandalf.ozlabs.org (Postfix, from userid 1011)
	id 4dvfH403twz4wGx; Mon, 19 Jan 2026 16:32:32 +1100 (AEDT)
From: Rusty Russell <rusty@rustcorp.com.au>
To: Tim Bird <tim.bird@sony.com>, karim@opersys.com,
 akpm@linuxfoundation.org, tglx@kernel.org
Cc: tom.zanussi@linux.intel.com, kernelxing@tencent.com,
 perterz@infradead.org, linux-spdx@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tim Bird <tim.bird@sony.com>
Subject: Re: [PATCH] kernel: add SPDX-License-Identifier lines
In-Reply-To: <20260113234405.539422-1-tim.bird@sony.com>
References: <20260113234405.539422-1-tim.bird@sony.com>
Date: Mon, 19 Jan 2026 16:00:37 +1030
Message-ID: <875x8yw4n6.fsf@rustcorp.com.au>
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Actually, all my kernel licenses were intended "GPL v2 or any later version".

Sorry if that makes trouble for your licensing theater group!

Cheers,
Rusty.

Tim Bird <tim.bird@sony.com> writes:
> Add SPDX-License-Identifier lines to some old kernel
> files.
>
> Signed-off-by: Tim Bird <tim.bird@sony.com>
> ---
>  kernel/cpu.c   | 3 +--
>  kernel/relay.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/kernel/cpu.c b/kernel/cpu.c
> index 8df2d773fe3b..5185c0be847a 100644
> --- a/kernel/cpu.c
> +++ b/kernel/cpu.c
> @@ -1,7 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /* CPU control.
>   * (C) 2001, 2002, 2003, 2004 Rusty Russell
> - *
> - * This code is licenced under the GPL.
>   */
>  #include <linux/sched/mm.h>
>  #include <linux/proc_fs.h>
> diff --git a/kernel/relay.c b/kernel/relay.c
> index e36f6b926f7f..6ed6bc929bf9 100644
> --- a/kernel/relay.c
> +++ b/kernel/relay.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Public API and common code for kernel->userspace relay file support.
>   *
> @@ -9,8 +10,6 @@
>   * Moved to kernel/relay.c by Paul Mundt, 2006.
>   * November 2006 - CPU hotplug support by Mathieu Desnoyers
>   * 	(mathieu.desnoyers@polymtl.ca)
> - *
> - * This file is released under the GPL.
>   */
>  #include <linux/errno.h>
>  #include <linux/stddef.h>
> -- 
> 2.43.0

