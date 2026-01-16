Return-Path: <linux-spdx+bounces-118-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84883D29798
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 01:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DDC3B300FEF3
	for <lists+linux-spdx@lfdr.de>; Fri, 16 Jan 2026 00:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A389E30FC2C;
	Fri, 16 Jan 2026 00:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="QZHAUMD/"
X-Original-To: linux-spdx@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7533112BA
	for <linux-spdx@vger.kernel.org>; Fri, 16 Jan 2026 00:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768525155; cv=none; b=fE4pOEHi4galuUoavJXDqN/5h52MWmAR2UaKIqTQx3z4wiqLJRXCAWdLC0AgMQsEaU3I8mGgv306KfAVl/BmsZn25pN0H8eZhVmWlw6C/vZt3vCIApqLYMBeFn+pKDGPvyqW25J4KeYyOTCJHOAgXn9LZucWS1MhCFo95F4prWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768525155; c=relaxed/simple;
	bh=FJKJ7E4hlPJk8URtEkobbu/LjDHIArjU9hWqerPdiXE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T+B0spRt4O3gz652MwzoXQ2/Wy4SjXso9cWVBkvdUSSUaVKcxfs7of+4+kyxnyGwTeqaPupZ9mVVNC4T/4y79H4MyfTb0/G4Lk3/7HR64e8ScUDIAz97+LSJb55Az8T5s7cMWTzQmFAHWUcCciJTxvktSzc/BYPkVyf9MiFBiAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org; spf=pass smtp.mailfrom=linuxfoundation.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=QZHAUMD/; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b86f3e88d4dso252306866b.0
        for <linux-spdx@vger.kernel.org>; Thu, 15 Jan 2026 16:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1768525152; x=1769129952; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LOdeBQCcrvI8C8Fmh1iWea264jcstgubwlFySsR1PiE=;
        b=QZHAUMD/IJ6o/fgvuPrCH+6N8yZFBXlqGyQdg0XI4wdvpSIXsfo1Bz/sH7Bz6RRrW2
         dVtaPTsre9LHI+xBTW0FG/VKDDAMMfV425M6uZPa1lxZQZHclnPU00POG/0scbQIXrZh
         78Qn+Dn2281d8AyVonkJyPC1/nk8M5mVlK9qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768525152; x=1769129952;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LOdeBQCcrvI8C8Fmh1iWea264jcstgubwlFySsR1PiE=;
        b=fBRj5kPwkYfx9B9G91u77rIdKC3TxUpCbL/8mg+6gju+M/fugdjtHmA6KMBlcORAER
         aRRU7Nm+zJIHjsxNT0KzoQSHuoShzcQwcm2JUkHmHQtulPALDZRDbtv9OTbvYG/l4ReE
         PdcWXCxlwqTo1/gojapsRapZBgiDAGF9N+pA/C9tmawRJHARtH/wX4EG2WDQiG36605P
         x0PFnHIsrG9HM/nGQvVgEmNaKn3y8nJYGGL0m4cWFwLAuvmWs+b07nMXmvfPUN19BhZw
         LV1IZoI/wj/Cv4MX+wFUNulwcHJLabSyW7LBwpABRqDBAXB4vBAV7HWHfjP/U+9RH8Ix
         LDXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNBhbZPOhjNe/D7QqYH3tdAGDK4q3JyFX/fMuM2Wz7YcptJjBLyQZoTqoK/8lJBgFmQ028Jb/g9QzD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6jq+yBWZOgdPoZbeet/vdLFPQPyY0poR4qomDfSE6Kqz9k5Lv
	mBKf+ipzoqUlaDsxym7AVmbQDmouZcvt1plggDyEQ2xFrgfr6t0CFsEAW6go4Zd+dFSfLIRtsuL
	Vw5zj+LY=
X-Gm-Gg: AY/fxX6bVUzc9tyUfed2wvZ3nSVUJ0ZJrz1jxid1aqp7MnPQ3cjcmgryph8eFSZCXt0
	ogQRPePbdgUhhxPWtENB7vGwJFI8f1Ji3yBoP5UYleGSvFqkCRzVCy0VW1WWoEQQUAstFD25YIz
	Y3yLhJPBa2TsQ0D06SFCTtQzqVHrUjR+oTHImKlX1Dw+8ztHytrgL1K0qz2/XVFwdOWhi3m0ocQ
	UDDl+J1mIO9q16birObsVGQfRC7yuFCypmZAdc7zTW1//DXP4joJvIDBpruOXK2KFuSd3tAZXcj
	ut/gX7MvO5eW510aPIw9pMtH7H+8jf9KjqHkWkLHxuwI3xBiHm4a9ENX7NpRsgwoUoB7kKYahVU
	NlM521UaTobEEqE33D+mUUKT/7t3HD1lkJlgXozSGRSY1f6xmbWC4qmbQrv2YV5UleHJxVsWQxF
	NpkVsDY4dQa9JTfcpitjddNq9MFkdFZeSLXVfvR198qU0K9YCsX6hR1DVXt3ZZaV1a5f2MrCc=
X-Received: by 2002:a17:907:7b99:b0:b79:fe73:3b18 with SMTP id a640c23a62f3a-b8792d5a983mr112346966b.22.1768525152124;
        Thu, 15 Jan 2026 16:59:12 -0800 (PST)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com. [209.85.218.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fc086sm82647666b.56.2026.01.15.16.59.11
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 16:59:11 -0800 (PST)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b8719aeebc8so275636266b.3
        for <linux-spdx@vger.kernel.org>; Thu, 15 Jan 2026 16:59:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWl5wPcFk4tHC50/Pzz23NCgfmXbnoSvOMr9eydVHiY4YJAhEYMQvdGRjozE5ukzCyTc2rJCq3qguav@vger.kernel.org
X-Received: by 2002:a17:907:846:b0:b87:1eaf:377c with SMTP id
 a640c23a62f3a-b8792f79e1fmr111655166b.38.1768525151173; Thu, 15 Jan 2026
 16:59:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116000431.643070-1-tim.bird@sony.com>
In-Reply-To: <20260116000431.643070-1-tim.bird@sony.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 15 Jan 2026 16:58:53 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgZyDxoAr5kLiPF2_6YhxpdjhwwEoa2JTZG82tZ4BHFHw@mail.gmail.com>
X-Gm-Features: AZwV_QjuN5goLR-cDxAGObxHJ56ckXkQWXbqPvyCGZu0bVCEnvBNNJpfgZqKfhg
Message-ID: <CAHk-=wgZyDxoAr5kLiPF2_6YhxpdjhwwEoa2JTZG82tZ4BHFHw@mail.gmail.com>
Subject: Re: [PATCH] kernel: modules: Add SPDX license identifier to kmod.c
To: Tim Bird <tim.bird@sony.com>
Cc: mcgrof@kernel.org, petr.pavlu@suse.com, da.gomez@kernel.org, 
	linux-spdx@vger.kernel.org, linux-modules@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 15 Jan 2026 at 16:04, Tim Bird <tim.bird@sony.com> wrote:
>
> kmod.c was originally introduced in the kernel in February
> of 1998 by Linus Torvalds - who was familiar with kernel
> licensing at the time this was introduced.

Lol.

Applied.

               Linus

