Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C298532BD6
	for <lists+linux-spdx@lfdr.de>; Tue, 24 May 2022 16:00:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231878AbiEXN7k (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 24 May 2022 09:59:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbiEXN7i (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 24 May 2022 09:59:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6B1488CB31
        for <linux-spdx@vger.kernel.org>; Tue, 24 May 2022 06:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653400776;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=2Ff+pshfC1Z6E3EzI0y8JRQ1REVK5W8crSBK2MgvYz0=;
        b=DSpYG+4NlWiqaphu7vKYzYay3VPiwBlUqvxTWu8OmIbX4Mskwci7Mq4/rBhSfAORxlIZAO
        /45UKtW0v9pqYZqCGvjY1+7xmtkx+nnAuzjgL+7iaAZVundzxy36n0Xn4P4A6RvPkAuotG
        Ogq5WX3st1696iH9vkuHaC1WAatOBiw=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312--n8qK4GBMs--qDHpcA2onw-1; Tue, 24 May 2022 09:59:33 -0400
X-MC-Unique: -n8qK4GBMs--qDHpcA2onw-1
Received: by mail-qk1-f198.google.com with SMTP id v14-20020a05620a0f0e00b00699f4ea852cso13547609qkl.9
        for <linux-spdx@vger.kernel.org>; Tue, 24 May 2022 06:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2Ff+pshfC1Z6E3EzI0y8JRQ1REVK5W8crSBK2MgvYz0=;
        b=ck1hBXq7gCudl38Ub3/SvvOpL/HVb1J9YYOhh3+69KprqcaKxMxoQGHo7x2lo8qssn
         8W5IF+AJF9SV8AVCuSqtsP/gS8rXzHahTHdmjlEKGYAA+cXKRIcxdP1H73PJKwYmq5rY
         bzzfMQ+CL+oqaE3fw3JeSulso7nDjL/YHjCd7742vGOT69/Nne2qbu4orvbVQ81vjUSi
         z/Wg5LaEkJPVK4JdXZHuOATBBOYeVk1SMnLzdtki5p+i9IDwErtyO6e1Z8BwytF0d2UJ
         NEO71c7LjZflnes4lCvZonQadesgHKSQCoQUZICPh2c20R1rzq5X5yHJ7jELucn/TJFC
         FLyA==
X-Gm-Message-State: AOAM533U8lcAbWUZLWRAeO3ZB49MN2vSnBMeNqQktISCtLNrtax0zhGw
        hXvis8LodYBUd/Un1Iz6OtTyZwA7TmNFCawtZnhNAh7ahDC4/+Gh0kMA5SgB5YWVhEdejOg8lW5
        7qYjrLFcpIw/sUtybt2sE524xS+axl4GbxGIwHw==
X-Received: by 2002:a05:620a:1981:b0:507:4a52:f310 with SMTP id bm1-20020a05620a198100b005074a52f310mr17389267qkb.611.1653400773150;
        Tue, 24 May 2022 06:59:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqS+yZK5ZzpIED7qcr754PYpaiBLoHFNyuZBNAopvk3ojwwBfdu204lMoxiDpi9ZmkpuCv+gT3j6X+c8inrO8=
X-Received: by 2002:a05:620a:1981:b0:507:4a52:f310 with SMTP id
 bm1-20020a05620a198100b005074a52f310mr17389243qkb.611.1653400772863; Tue, 24
 May 2022 06:59:32 -0700 (PDT)
MIME-Version: 1.0
References: <20211029184500.2821444-1-mcgrof@kernel.org> <20211029184500.2821444-2-mcgrof@kernel.org>
 <87h75g0xbm.ffs@tglx>
In-Reply-To: <87h75g0xbm.ffs@tglx>
From:   Richard Fontana <rfontana@redhat.com>
Date:   Tue, 24 May 2022 09:59:22 -0400
Message-ID: <CAC1cPGz3ARW_H9cq6LY0_h3YXomMmSdVR1v1+xEYbshtK8Mvmw@mail.gmail.com>
Subject: Re: [PATCH v9 1/6] LICENSES: Add the copyleft-next-0.3.1 license
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     Luis Chamberlain <mcgrof@kernel.org>, tj@kernel.org,
        Greg KH <gregkh@linuxfoundation.org>,
        akpm@linux-foundation.org, jeyu@kernel.org,
        Shuah Khan <shuah@kernel.org>, bvanassche@acm.org,
        dan.j.williams@intel.com, joe@perches.com, keescook@chromium.org,
        rostedt@goodmis.org, minchan@kernel.org,
        linux-spdx@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
        linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org,
        Goldwyn Rodrigues <rgoldwyn@suse.com>,
        Kuno Woudt <kuno@frob.nl>,
        Richard Fontana <fontana@sharpeleven.org>,
        copyleft-next@lists.fedorahosted.org,
        Ciaran Farrell <Ciaran.Farrell@suse.com>,
        Christopher De Nicolo <Christopher.DeNicolo@suse.com>,
        Christoph Hellwig <hch@lst.de>,
        Jonathan Corbet <corbet@lwn.net>,
        Thorsten Leemhuis <linux@leemhuis.info>
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rfontana@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Mon, May 23, 2022 at 5:10 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Fri, Oct 29 2021 at 11:44, Luis Chamberlain wrote:
> > preferred. A summary of benefits why projects outside of Linux might
> > prefer to use copyleft-next >= 0.3.1 over GPLv2:
> >
> <snip>
> >
> > o copyleft-next has a 'built-in or-later' provision
>
> Not convinced that this is a benefit under all circumstances, but that's
> a philosopical problem. The real problem is this:
>
> > +Valid-License-Identifier: copyleft-next-0.3.1
>
> and
>
> > +11. Later License Versions
> > +
> > +    The Copyleft-Next Project may release new versions of copyleft-next,
> > +    designated by a distinguishing version number ("Later Versions").
> > +    Unless I explicitly remove the option of Distributing Covered Works
> > +    under Later Versions, You may Distribute Covered Works under any Later
> > +    Version.
>
> If I want to remove this option, then how do I express this with a SPDX
> license identifier?

Probably off-topic but: I think as things currently stand in SPDX you
would have to use an ad hoc LicenseRef- identifier to express the
entirety of copyleft-next-0.3.1 coupled with an amendment that sort of
strikes the later versions provision. This issue is also somewhat
relevant: https://github.com/spdx/spdx-spec/issues/153

FWIW, built-in 'or-later' clauses are actually common in copyleft open
source licenses; the GPL family is the oddity here. (Then again, the
whole idea of a downstream license upgradability option is sort of
unusual in the bigger scheme of things, but that's another topic.)

Richard

