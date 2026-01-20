Return-Path: <linux-spdx+bounces-134-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC66D3BF2A
	for <lists+linux-spdx@lfdr.de>; Tue, 20 Jan 2026 07:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 29F7C383E4E
	for <lists+linux-spdx@lfdr.de>; Tue, 20 Jan 2026 06:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8895350D4D;
	Tue, 20 Jan 2026 06:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=colorfullife-com.20230601.gappssmtp.com header.i=@colorfullife-com.20230601.gappssmtp.com header.b="fmvkLGNe"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74566363C77
	for <linux-spdx@vger.kernel.org>; Tue, 20 Jan 2026 06:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768890435; cv=none; b=QuIM5Kho4dQpjZ2aquqLN3C+4nAWMsBjLMYr1JOhVAymR4N1wTWWJEgHb32OypYU87P1azM1aYwm7GkGCYmF3fxsL4T1AV8dwOcLXP0iyBDr097RcInJOXeDDt/QTRN5VDewzTYiOWI+hiv5XeTSRJD8n8OiDHeFZp7jWas/cak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768890435; c=relaxed/simple;
	bh=qj5zC4BFCMBLOQ7/w214kNE/FtH4ooMr3u7lNV999xI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LVB5GMBci37NDJCqGCI+YS/CFkzaSq+juaS98YjoFosc4pOSIx32vU/xB2Uiwwj8wOQEHI1y2+sLBG+SKPZQcq5PPEtKa5h8V6PQkZ3MR1LTgniGCNC4fxq/uIVJI2jO7yAEQoknBc/e52p8vqyDKrWrzKd4fTqlsz94rzibbQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=colorfullife.com; spf=pass smtp.mailfrom=colorfullife.com; dkim=pass (2048-bit key) header.d=colorfullife-com.20230601.gappssmtp.com header.i=@colorfullife-com.20230601.gappssmtp.com header.b=fmvkLGNe; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=colorfullife.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=colorfullife.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-6505d141d02so8607543a12.3
        for <linux-spdx@vger.kernel.org>; Mon, 19 Jan 2026 22:27:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20230601.gappssmtp.com; s=20230601; t=1768890429; x=1769495229; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+euDLiPTeGNUCv7DmnbnaQBNhzEXKUHc3BWfwIfdO3o=;
        b=fmvkLGNe4wD9XKrGWGA4KgRqoxxG9lgnvFxWFkhid1tAjj39mz2fggk3gPbFmQYqZv
         K2wTszhW5NtT4Dlehb7ZfAq0tpvPhd3LlOO7ELGQ9fnnUo2VrT+zsnelKd3ptSrPAPTL
         gT0XcKMNpUwt86yrMT7LILPfKDElbAJEaQb1pSTokbZ6awNIA4d/DmV+KHJKLs9GbhHf
         +S/Fxhy1UAXhKjU/FvQ1C6MphFi/FT1LGOcnhVBtpCwWbLCXPBWeWQggAh0jtd1ueWiZ
         PShKvL2IXafVjjDRI108rUlC2f/73TsnlFyxuxmYSubyloBPM9hoXF4su2yu07NwBgxW
         3rLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768890429; x=1769495229;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+euDLiPTeGNUCv7DmnbnaQBNhzEXKUHc3BWfwIfdO3o=;
        b=xOsuMoTKzTU7GLJBuOWabDaRiImK5I5g+IjObOCwcSfsHbNeJVkX8w8X0uCHJKjWWp
         4TZCk/TGqwRiEdUi92SqGgsjkxtRsr7jcxM8t89NFZ37D8tS4F41SgQ6uruwfI5AxdRM
         zc+O2oQcrK80Wtv1hPrj44+dPqpemXd4KTxiDnC6vMwEKXFLEAq7HC7AO4YZEKYnNqU8
         JVOOtI4vLEpbzyz0LMMd45Tc8Y9fdjze/T6K4769IeHZq9+r5Zg2VbHFPJ7k3atGKCny
         1pJFJnjsxmiN7stxTIIUyl876l8ZXaxivtHmw/90nYpGChaxn/UjhzO6H9I/sx5ZiwWS
         OY/g==
X-Forwarded-Encrypted: i=1; AJvYcCVOvrYsipiQR/jr2BrxDCLvk2WjyjEqMLP4dCo5Dss82r8GSDkr0KCnwbnR5Y5tEL3X4fBQpjID0zrp@vger.kernel.org
X-Gm-Message-State: AOJu0YxXOS4BsbqUTp5oyRgRYl/pTWmC5KIGHmh17FMvqBIJTOpoIfEk
	bkMrf8UAL9jDcjwQ6JBpw4JIvRVr/aVMKfrSz+9Kt4Gi25Hfr8qZlYmmc+NNYH8pCA==
X-Gm-Gg: AZuq6aIy5n3Q4+X0kATsJOeLKRYYRVhpptVFzihO1gX8yVRJj4hNj+0TBa9WAaDbxYS
	WTeYYPsrH54qHsnm0y9cjjD8Io0nO5y6MowRuUC5St5gE8xm6XJP1L6zrLr+4RXRHsIg5HfP7jX
	IvV/ktMg8kuUamKw/jzlcpBqXPW314l8utGkmCUhxP6TC/ZW5HWb9oeTW/QTuFzy+FPRICG+ySt
	4JRpm60uP4iPLRApHC1jO6qLFKCyCLbh3C/gpRxdeENATzG76ph6XqI+I2TrdDflahMGwNpjZg2
	6j1vQFvOrtFu853zl9qNVF9J1bmPdvDNzPpbXZew3/EjzYw2okqsNOZqCj8QOiymIh3vgh2DJSN
	Kt4NCQjRZehoOYkXtLVxOhSikmatQTuFXwvCWgAhyQ8uYjoYQ+cyz3ibUu2pJd843kY2ttuTKyh
	zV4ukdwrvYibAfEvTGJNNlj4195KbkYIfCja4q2VoNLZRqBZ/o4sTy7uhavVWSZBuJfCEkiZP73
	Kp8Sztq7486vDbs9ywtp+9C65ErCezDyKeIGnQRYkoFoDnUjFU=
X-Received: by 2002:a17:906:dc90:b0:b87:5464:8b5c with SMTP id a640c23a62f3a-b88003d7062mr77486366b.63.1768890429355;
        Mon, 19 Jan 2026 22:27:09 -0800 (PST)
Received: from ?IPV6:2003:d9:9708:4800:2bb1:17a:8125:85df? (p200300d9970848002bb1017a812585df.dip0.t-ipconnect.de. [2003:d9:9708:4800:2bb1:17a:8125:85df])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168b2esm1331066966b.17.2026.01.19.22.27.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 22:27:08 -0800 (PST)
Message-ID: <357ec464-099f-46b0-8afe-261adb10f173@colorfullife.com>
Date: Tue, 20 Jan 2026 07:27:07 +0100
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: ipc: License cleanup
To: Michal Wronski <michal.wronski@gmail.com>, tim.bird@sony.com
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-spdx@vger.kernel.org,
 golbi@icm.edu.pl, Christian Brauner <brauner@kernel.org>
References: <165322122199.3770149.6631395213068803310.tglx@xen13>
 <4129afa8-1c92-7a6e-e9d8-33712c21c649@colorfullife.com>
 <CAACB_9hMwWAP9s3rekpyaFYkA4NAsN2sTGDDxXHEhcWPxGxzoQ@mail.gmail.com>
 <CAACB_9i9GLbsMH1Tea6oTxC9oyxkECpO+AEykx=1acLM+V9iEQ@mail.gmail.com>
Content-Language: en-US
From: Manfred Spraul <manfred@colorfullife.com>
In-Reply-To: <CAACB_9i9GLbsMH1Tea6oTxC9oyxkECpO+AEykx=1acLM+V9iEQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

// reply to old mail. The old mail was multipart html/text, thus it is 
not archived on lore.

@Michal: Thanks.
@Tim: Please add a reference to this mail to your change:
https://lore.kernel.org/linux-spdx/20260119-heimcomputer-antiseptisch-d26168914a0d@brauner/T/#t

For me, GPL-V2 is ok.
For Michal as well, see below.

--
     Manfred

On 5/23/22 8:00 PM, Michal Wronski wrote:
> Added valid Krzysztof's email
>
> On Mon, May 23, 2022 at 7:58 PM Michal Wronski 
> <michal.wronski@gmail.com> wrote:
>
>     Hello,
>     Any license compliant with linux kernel licensing rules is fine
>     for me. I don't know which one is preferred though.
>
>     best regards,
>     Michal
>
>     On Sun, May 22, 2022 at 8:58 PM Manfred Spraul
>     <manfred@colorfullife.com> wrote:
>
>         Hello Thomas,
>
>         On 5/22/22 16:54, Thomas Gleixner wrote:
>         > Manfred!
>         >
>         > As you might know we are working on cleaning up the
>         licensing mess in the
>         > kernel and convert it to SPDX license identifiers as the
>         only source of
>         > license information.
>         >
>         > Archaeology found unspecific GPL license references, which
>         have been
>         > authored by you.
>
>         Sorry, no, the initial authors of the file were:
>
>           * Copyright (C) 2003,2004  Krzysztof Benedyczak
>         (golbi@mat.uni.torun.pl)
>           *                          Michal Wronski
>         (michal.wronski@gmail.com)
>           *
>
>
>         I did cleanup & merge support and probably many small changes.
>
>         But from what I remember, the majority of the code is from
>         Krzysztof and
>         Michal.
>
>
>         > 1) this file is released under the gpl
>         >
>         >       ipc/mqueue.c
>         >
>         >
>         https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/commit/?id=be94d44e818a5
>         >
>         > Can you please either send cleanup patches for the affected
>         files or
>         > indicate which GPLv2 variant you had in mind and I run it
>         through my
>         > cleanup machinery.
>
>         --
>
>              Manfred
>


