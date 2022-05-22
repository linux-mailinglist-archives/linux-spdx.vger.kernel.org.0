Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F25F95304F2
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 19:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349741AbiEVReL (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 13:34:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238490AbiEVReK (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 13:34:10 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 1A4B02DD4F
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 10:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653240848;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=tZ8qYI0VTQbc68nDITWJkHGKTkrR4iyPN0Cw2HWascE=;
        b=PJH92BhmeezRSk5TkgO/KJwmkQZSZso/QcrYtR0RkoY27zSjV1S90kvzrM7ZCRhomUIObK
        /fxfM5Iic2Pj5J50OSaDtYDek2Xa+4XV3FUoNcxfN1DPqZscc5w5ue6EE0+fL2go1X3QY+
        tEsu8uLQ44HFpg8H8PnFVzX6+X+4H00=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-PHnEXRXrOF2k_8NuxvKA6w-1; Sun, 22 May 2022 13:34:06 -0400
X-MC-Unique: PHnEXRXrOF2k_8NuxvKA6w-1
Received: by mail-qk1-f197.google.com with SMTP id v14-20020a05620a0f0e00b00699f4ea852cso10063312qkl.9
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 10:34:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tZ8qYI0VTQbc68nDITWJkHGKTkrR4iyPN0Cw2HWascE=;
        b=o0t7CeLoxWrZYtnGxfHpWThiNjA33Fhj4glTAeTaTfjOdTEOai3TwkuQNGp0UhcCy+
         qgNujbSpyBVLN7aOtq63Rw5Cq4j+5C98nQrnuwMfQvPyy69voTL0tAApvoI+s6pyPXQi
         +h8QYSsAhRXPc+gHkDvFNh+1249x1Y5vNOmBRIykRo661A8932e4xbA+V7vq0Aj94JpS
         N6EQTes7GoUSofRmeR55aCCymPYJP2ALquAHX9NDtIi41g1Q48Y9MxXr2/wCeeRbEN0e
         k2z28rXV51OUEAagLiUf7Y+5gT6nF+wuxA9rNgA5t4ugMYmR2N2/3IUN83D9sJocZu9g
         Cr5w==
X-Gm-Message-State: AOAM530mnXPI0oGHsZwBBoeouPDT6e5eEg/vQCHr2qSjdYGsamkuaaQy
        7y8EBftVfi7w3GJzx3TX4J5Xri3YXNaclfveqNpsHQMyL1b1uy32TyYIwBl3GexR6xkKazsC1UU
        7NFiJYxxndSungXxaIdRsPf3/Ye3kzNOABFj7mw==
X-Received: by 2002:a05:6214:4110:b0:462:410:9cb0 with SMTP id kc16-20020a056214411000b0046204109cb0mr12148099qvb.78.1653240845985;
        Sun, 22 May 2022 10:34:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/8Px1lfaZkFY6d/wiUNa/mwao14pfJZ7RSqh6oy6AhUxT21AtS7FtnPSK1NGsa25+SxyuHI40ZKXWStJYtNs=
X-Received: by 2002:a05:6214:4110:b0:462:410:9cb0 with SMTP id
 kc16-20020a056214411000b0046204109cb0mr12148085qvb.78.1653240845720; Sun, 22
 May 2022 10:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <165322121770.3770149.18166071018834854082.tglx@xen13>
In-Reply-To: <165322121770.3770149.18166071018834854082.tglx@xen13>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Sun, 22 May 2022 13:33:54 -0400
Message-ID: <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
Subject: Re: treewide: License cleanup - RedHat originated
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org, Mike Snitzer <snitzer@redhat.com>,
        Jonathan Brassow <jbrassow@redhat.com>
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sun, May 22, 2022 at 10:55 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Richard!
>
> Sorry for pestering you, but the amount of files is just too much to split
> it up and targetting the authors is difficult because quite some of them
> are not longer at RHT. The files are all (c) RedHat or Sistina Software,
> which is part of RedHat since 2003.
>
> This is part of the effort to clean up the licensing mess in the kernel and
> convert it to SPDX license identifiers as the only source of license
> information.
>
> Archaeology found the following unspecific GPL license references, which
> have been authored by RedHat/Sistina.
>
> To clean this up, can you please either advise the RHT kernel team or let
> me know which GPLv2 variant to use for the files and I run it through my
> cleanup machinery.

Hi Thomas,

I assume you're selecting files that have some sort of Red Hat or
Sistina copyright notice. Just as a disclaimer, I can't speak to
copyrights in these files that may be held by other organizations or
individuals (and I can't say definitively whether any file bearing a
Red Hat or Sistina copyright notice has or retains any copyright owned
by Red Hat). With that said:

> 1) this file is released under the gpl

I am fine with saying that any Red Hat copyrights (including any
Sistina copyrights acquired by Red Hat) in these can be represented
with SPDX-License-Identifier: GPL-2.0.

I would note that the following files did not seem to have any Red Hat
or Sistina copyright notices:

>    drivers/md/dm-log-writes.c
>    drivers/md/dm-ps-queue-length.c
>    drivers/md/dm-ps-service-time.c
>    drivers/md/dm-unstripe.c
>    drivers/md/dm-zero.c

Skipping category 2 for the moment:

> 3) (c) 2000 red hat gpl d

> 4) this code is covered by the gpl

> 5) this software may be freely redistributed under the terms of the gnu
>    general public license you should have received a copy of the gnu general
>    public license along with this program if not write to the free software
>    foundation inc 675 mass ave cambridge ma 02139 usa

> 6) released under the general public license (gpl)

I am fine with saying that any Red Hat copyrights (including any
Sistina copyrights acquired by Red Hat) in these can be represented
with SPDX-License-Identifier: GPL-2.0.

> 2) this file is released under the lgpl
>
>    drivers/md/dm-core.h
>    drivers/md/dm-log-userspace-base.c
>    drivers/md/dm-log-userspace-transfer.c
>    drivers/md/dm-log-userspace-transfer.h
>    drivers/md/dm-log.c
>    drivers/md/dm-rq.h
>    drivers/md/dm.h
>    include/linux/device-mapper.h
>    include/linux/dm-dirty-log.h

For these, if the question is just about what version of the LGPL we
should treat these as, I'd be fine with representing them as
SDPX-License-Identifier: LGPL-2.1.

However, and I realize this may go beyond my 'remit' as someone
consulted for linux-spdx stuff or open some additional bag of worms,
I'm wondering if these would be better off just relicensed under
GPLv2, and thus represented as SPDX-License-Identifier: GPL-2.0. Even
treating this code as having been LGPLv2.x-licensed, this would be
authorized or at any rate contemplated by the largely-overlooked
LGPLv2.0/LGPLv2.1 section 3. Suggesting this because it would seem to
help marginally with some of the goals of this initiative and also
because it's not obvious to me why LGPL would have been preferred over
GPLv2 for these files to begin with, assuming they weren't copied from
some unrelated LGPL-licensed project. I've cc'd Jonathan Brassow and
Mike Snitzer in case they have any thoughts on this.

Richard

