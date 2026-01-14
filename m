Return-Path: <linux-spdx+bounces-113-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 803B3D1FC8C
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 16:34:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6B0FB3008C70
	for <lists+linux-spdx@lfdr.de>; Wed, 14 Jan 2026 15:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40EAB319605;
	Wed, 14 Jan 2026 15:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=opersys-com.20230601.gappssmtp.com header.i=@opersys-com.20230601.gappssmtp.com header.b="qfZPCHx4"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67E02472AA
	for <linux-spdx@vger.kernel.org>; Wed, 14 Jan 2026 15:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404278; cv=none; b=PmyK7mF9toEpfHdCUzHwQgBhAJaLfhSA8QmopfXMiligdjQMl5Qc9Q8ABcxMtuPsCCXc3wIVgdPPAE3wzDayLjp+VAc8CYLRDHOW4d7HIJwmN+PypPrGm86CQ9cSDKpFfyZQws8l9h/XfDMjyIUkv4af6AgpVbbU4AuNTYBxtnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404278; c=relaxed/simple;
	bh=L/XE2tP+7B/yV7Ns+S5Lzh05qgN0j4wTc57fEIa9ATI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FY5oOfi3gJ/8WdWQY9SNrfyRrVTISAMlOAj0p4MWYpSXXr3navSBNryAFjpVujArY/aYHStI4IKW8VAIHBkpSVvYUNEVFp3EV4nbGc9Y2/nsbfaWMOrkAfZcPcjMkRDWPHRQAbyr9T6xjjKvgn88sFXaBMj+R7FbdNeJvExEG9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=opersys.com; spf=none smtp.mailfrom=opersys.com; dkim=pass (2048-bit key) header.d=opersys-com.20230601.gappssmtp.com header.i=@opersys-com.20230601.gappssmtp.com header.b=qfZPCHx4; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=opersys.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=opersys.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4f1aecac2c9so12423761cf.1
        for <linux-spdx@vger.kernel.org>; Wed, 14 Jan 2026 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=opersys-com.20230601.gappssmtp.com; s=20230601; t=1768404273; x=1769009073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G5Wv1GljxLnekVGmR9xi2rnqayZbvVnZY1deF7EjfMk=;
        b=qfZPCHx49Bar6q34Eu62x0OIlHOdVYhsnwck6aIV+0I4UCnRHpDOOh7h1Q1Ub2DJ9h
         pCWIxbNVwqw7p9Nzhy910T9QCPXhE1ohNx3l86KFpIwVmTtxGixxA1VX0lPs7r/1lRhP
         5i2M7KGp8yhY2dmuESaUZhVPywoXLAMwzKpz1JeMzMtFm5wetp81gIyKnTsDfuuH7PZ8
         scIbvFgFLP6yBGo2OtxDj6En/RPZuNbIZpM4R5jU/ZG43hWPG119qHXf1PDfBXsK808A
         U9dXrA+pSrDPhPnbBuAFkBPGZz+eybbYyuaw2ELOy8+BZreP4q0wVbwolFawTccNcNFC
         etgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404273; x=1769009073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G5Wv1GljxLnekVGmR9xi2rnqayZbvVnZY1deF7EjfMk=;
        b=mBOJ5txx7vfo+PMYyc615Sjimx0K/A3kSxdtoq15DvG72AvdX9ZurBNU1AalTQ2UvD
         G+9hqJSyxs+FaiFiroPFcB38I+8Po+7K4tZVm71vijQfOhwltdjFwKZk0EZJH0e0WlNk
         59tpuFEqdCb1Qt9C0ZGFDKMamYSxiCwGmq6vyGFpZgexj1Ts9WBPvP+a75UtOqpQeDBu
         T+AyluueDo+Wwm7HvZ4rRVJWnGbUmhEDfAhtxLYIBKWOVNj41V7cFIgZahOs3RFNNDtk
         dAGTrtEo23d8U5RoOY41/aLDjNn8FYZUuXdbyL7Y4CftpQxp59HtxRNJ24UL1e67UwqX
         TL+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGd0VTQOjHIvp2PDnTbFFdIEfeEy+SVC5ZKG1FXTlivov/YofKOr2HFb60q2lGhMLcCC0FjEMQi5Kg@vger.kernel.org
X-Gm-Message-State: AOJu0YyJl4yW5Ey2RgPgXDjxPtuCN8t/oyRh94i4M9mImVhC6p8m3QZM
	klEHexYgL+erJHRNDD8akJ4koy/Xvi5x1sbG7S9sTzp6rYzXBzk+L+tQNeqBnXyiHn7hcVl3GYy
	1Q9gG
X-Gm-Gg: AY/fxX70YEQfxf+xrvSphArB4nWms7+dbiajU+MppUWIgPEafOqvFZ2VRYjK+FFMkTA
	XFCo/5PTE3bqng7T97VpsW6eP0yVA0CMgWYQECXhENnAWcdch3UP++Y5xeY2mD/KH5rPYUdydSu
	qC7FvOFk+xCT3nX+nndOqBfByCwwXt8b9vIamW6xZJWJbEQLPx8Sl5BHy7Y7ifwbFb/MZX8K9NX
	S/CCZiL9Om9qBz3ZmdufqQSIO5k7meutNKPnvwmu4eMlT87iddGpn1OIM5G9NaPLjTk/yXqGfx1
	4/57r9MJnJnMbWY3DRh6O8sCu20u4FZwYFT9meESMK80+znbQWeHbxW6O8lSa1wbnLjFHp5D36e
	UjKFayUDPvjZ+4nkmAxSBDMxD1b8jp28IihiUbCustCjGYvZWB7eDqLCwGbpPEtFtxHg4RLHSnL
	3KLsjrQvdV9PBDMYnasQ2VhyW0SGJXvpyFm9zOD1r8F0er4AwdZI6UVBwI+Y0ApEwyZpo=
X-Received: by 2002:a05:622a:400c:b0:4f1:8bfe:e447 with SMTP id d75a77b69052e-5014883bdc9mr33847411cf.42.1768404272443;
        Wed, 14 Jan 2026 07:24:32 -0800 (PST)
Received: from ?IPV6:2605:b100:535:80fa:cdfa:21dd:9d71:16fd? ([2605:b100:535:80fa:cdfa:21dd:9d71:16fd])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50148dd7bdesm16281041cf.1.2026.01.14.07.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:24:31 -0800 (PST)
Message-ID: <7a526887-00ec-4599-bfa2-383896c0c688@opersys.com>
Date: Wed, 14 Jan 2026 10:24:25 -0500
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] kernel: add SPDX-License-Identifier lines
To: Tim Bird <tim.bird@sony.com>, akpm@linuxfoundation.org,
 rusty@rustcorp.com.au, tglx@kernel.org
Cc: tom.zanussi@linux.intel.com, kernelxing@tencent.com,
 perterz@infradead.org, linux-spdx@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260113234405.539422-1-tim.bird@sony.com>
Content-Language: en-US
From: Karim Yaghmour <karim.yaghmour@opersys.com>
In-Reply-To: <20260113234405.539422-1-tim.bird@sony.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


Hi Tim,

Thanks for taking care of this following our discussion at LPC.

Just addressing the relay.c part below.

On 1/13/26 18:44, Tim Bird wrote:
> Add SPDX-License-Identifier lines to some old kernel
> files.
> 
> Signed-off-by: Tim Bird <tim.bird@sony.com>
> ---
>   kernel/cpu.c   | 3 +--
>   kernel/relay.c | 3 +--
>   2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/kernel/cpu.c b/kernel/cpu.c
> index 8df2d773fe3b..5185c0be847a 100644
> --- a/kernel/cpu.c
> +++ b/kernel/cpu.c
> @@ -1,7 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /* CPU control.
>    * (C) 2001, 2002, 2003, 2004 Rusty Russell
> - *
> - * This code is licenced under the GPL.
>    */
>   #include <linux/sched/mm.h>
>   #include <linux/proc_fs.h>

For this part:
> diff --git a/kernel/relay.c b/kernel/relay.c
> index e36f6b926f7f..6ed6bc929bf9 100644
> --- a/kernel/relay.c
> +++ b/kernel/relay.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>   /*
>    * Public API and common code for kernel->userspace relay file support.
>    *
> @@ -9,8 +10,6 @@
>    * Moved to kernel/relay.c by Paul Mundt, 2006.
>    * November 2006 - CPU hotplug support by Mathieu Desnoyers
>    * 	(mathieu.desnoyers@polymtl.ca)
> - *
> - * This file is released under the GPL.
>    */
>   #include <linux/errno.h>
>   #include <linux/stddef.h>

Acked-by: Karim Yaghmour <karim.yaghmour@opersys.com>

Cheers,

-- 
Karim Yaghmour
CEO - Opersys inc. / www.opersys.com
https://www.linkedin.com/in/karimyaghmour/


