Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4846530512
	for <lists+linux-spdx@lfdr.de>; Sun, 22 May 2022 20:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344757AbiEVSBn (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 22 May 2022 14:01:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241474AbiEVSBl (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 22 May 2022 14:01:41 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47FE51FA56
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:01:40 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id f9so24534629ejc.0
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eIu2mn174za9EytORtm9rAO0MtXb1XDUUbpTIgI+PHc=;
        b=HD4BBfLwcQmYqTYTclim8Gq6nyPZwpIjLe0H5o0mJkKLjOCeJVOfzFskrcv7f2Zeco
         dePqlF7MZMdP3P9TFqQUlk5XD5eDrb4Gc38RtLytE23ldM4uvNP4b+k7NiS79YgRuEoe
         ulJaB65rZ3VHYUtcy7xhNMxebSPRLH7qxTlIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eIu2mn174za9EytORtm9rAO0MtXb1XDUUbpTIgI+PHc=;
        b=4/syxR9Ro5nf1g61u+Bx0xxco6p8pHuSR5W3El9U2jArQ2gBtfCfReXQY3JB4GecSU
         VqToX5OWJZH7p2ngWyfI/k9rH7nEpM8C1wYvvPZO7oMzgdDlrn5vZoD3FAYs7J0UxGcm
         2E+/yVIqfElv+k4JX2DaDvGJRHFeF8Sj05y8B9nwVtMrSHWMxJZ5Xh+/2E81tGxN839F
         ALneUFQ02AuFPwMIMsEeqn8iDa1/q3ngefneX8tdJyNyW2KffCtJ0+ciRRU+hUzS+B1g
         dp/VMs/8Otwa9NqqVH465VRitV0xW/nfg9bbe8+XAga4cUQCF6/HK5PtrKk3MfiDVow5
         ULHQ==
X-Gm-Message-State: AOAM531GvS/OO696KUfr0rs4+oUQ22zERxD69l6o3OsK+Zqbr+pkWLW+
        Idi1BrC/0ZhPbOXTMsP6RVGCvQM5Acdqiw==
X-Google-Smtp-Source: ABdhPJxT9tKh2KnUGBKfwrih9qsIyINv0IvlNL/NJklNPc0pd92HG0+/Vle+UMTOqJWYyLDouRt2Tw==
X-Received: by 2002:a17:907:2cc7:b0:6fa:88cf:c31a with SMTP id hg7-20020a1709072cc700b006fa88cfc31amr16250775ejc.471.1653242498614;
        Sun, 22 May 2022 11:01:38 -0700 (PDT)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com. [209.85.221.42])
        by smtp.gmail.com with ESMTPSA id b2-20020aa7df82000000b0042abfe32ac8sm7133272edy.30.2022.05.22.11.01.38
        for <linux-spdx@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 11:01:38 -0700 (PDT)
Received: by mail-wr1-f42.google.com with SMTP id h14so18094191wrc.6
        for <linux-spdx@vger.kernel.org>; Sun, 22 May 2022 11:01:38 -0700 (PDT)
X-Received: by 2002:a05:6000:16c4:b0:20f:cd5d:4797 with SMTP id
 h4-20020a05600016c400b0020fcd5d4797mr5308820wrf.193.1653242497683; Sun, 22
 May 2022 11:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <165322121483.3770149.17793045179048278100.tglx@xen13>
In-Reply-To: <165322121483.3770149.17793045179048278100.tglx@xen13>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sun, 22 May 2022 08:01:21 -1000
X-Gmail-Original-Message-ID: <CAHk-=whUgwJd21koy8UPk10s+Rd5Fg1MGva4uS4Vyd+15QWvSg@mail.gmail.com>
Message-ID: <CAHk-=whUgwJd21koy8UPk10s+Rd5Fg1MGva4uS4Vyd+15QWvSg@mail.gmail.com>
Subject: Re: mm, [c]ramfs: License cleanup
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sun, May 22, 2022 at 4:54 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Archaeology found unspecific GPL license references, which have been
> authored by you.
>
> 1) this file is released under the gpl
>
>    fs/cramfs/inode.c
>    fs/ramfs/file-mmu.c
>    fs/ramfs/inode.c
>    mm/shmem.c
>    mm/memfd.c (mm/shmem.c got split and the GPL reference got copied)
>
> Can you please either send cleanup patches for the affected files or
> indicate which GPLv2 variant you had in mind and I run it through my
> cleanup machinery.

Heh. All my historical code should be considered to be GPLv2-only.

As I'm sure you already knew, but wanted explicit confirmation of.

So please take this email as the confirmation for those files (and any
future historical archeology you do and find any other cases).

                   Linus
