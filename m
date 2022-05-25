Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F30EC533FB6
	for <lists+linux-spdx@lfdr.de>; Wed, 25 May 2022 16:58:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244926AbiEYO6s (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 25 May 2022 10:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244976AbiEYO6i (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 25 May 2022 10:58:38 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 529B7AEE3A
        for <linux-spdx@vger.kernel.org>; Wed, 25 May 2022 07:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653490716;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Q/qYjRZwsKAI9dPkaWSNsjN+CazVDSjjlEWv9BGdfS8=;
        b=cmcw7Z2OHO4KdX1dHJSVTBqYRhL5/gbN7DzjZesPF2ZHGmoP7jl9ag/+Oejx3yDAVjJ0Hv
        ZKt51JF5e9YJjyxgLepDiYWB1w/Kerg3cDN2qkPtM/89mm03TacN5LpLRZvefxkIAQ2KcF
        KWlTHfkjGLC6m8i88qZ8SrBLEH1OSgE=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-658-PkprimfPOlaPIpww8dut5w-1; Wed, 25 May 2022 10:58:35 -0400
X-MC-Unique: PkprimfPOlaPIpww8dut5w-1
Received: by mail-qk1-f197.google.com with SMTP id g14-20020ae9e10e000000b006a394d35dbfso6252117qkm.5
        for <linux-spdx@vger.kernel.org>; Wed, 25 May 2022 07:58:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q/qYjRZwsKAI9dPkaWSNsjN+CazVDSjjlEWv9BGdfS8=;
        b=kl9D0IxG2ll4EqBp8NYdQJu8EMoi7Zt3+fHMQBmQFjXMawM3kAkzDhnayGw7XjG31f
         SMuExZM9HLAgpz6mp9yN4IFIZiJwdqzQr2gCTHh3npoGttPYe9A8Sn3swsqmC6+FzojD
         hNT6OVO2F1SUBVXyrvpcR1+9YWYXLCbQj+E6Pe6kFF4c0cC7SnAhDHbTcFfacjXh2dQl
         Z2ZHDzI9pJS+Fk2G4tD5jAppkOKJ+XloCGrKZyrEnzCSKPgviHuznZkJBGncDCc94dOl
         jGzQQwyGFP83yLpLWyyCogIpJCLPaDWdTvU+/dU0hgDP9ZdLJsdyiVQ6lIVTJIgL3qC3
         oeYQ==
X-Gm-Message-State: AOAM531SoHIhsFiq3/YqM+D7zcvKJ1r8EWsrDEiY/nRvfb3EkHSAPexc
        V7dUsQZjisHchZ7DjpraHLBHJkHQ1XMSkCWURAyyHzcEc8xMN0ygAr1ibyexzuLyghWZruLVjL9
        UTjD8sSTWabbo3U/HsOCT
X-Received: by 2002:a05:6214:931:b0:461:d289:b7f6 with SMTP id dk17-20020a056214093100b00461d289b7f6mr26707348qvb.55.1653490714791;
        Wed, 25 May 2022 07:58:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzeXhIV5Rn0JH8NaISvi81JKLrzopSbsg9h6s5UgnJH/RQ3v82QAI5Hm5rItw73viOE/kTqUw==
X-Received: by 2002:a05:6214:931:b0:461:d289:b7f6 with SMTP id dk17-20020a056214093100b00461d289b7f6mr26707331qvb.55.1653490714508;
        Wed, 25 May 2022 07:58:34 -0700 (PDT)
Received: from localhost (pool-68-160-176-52.bstnma.fios.verizon.net. [68.160.176.52])
        by smtp.gmail.com with ESMTPSA id y21-20020a05622a005500b002fafd1643d0sm1023264qtw.8.2022.05.25.07.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 07:58:34 -0700 (PDT)
Date:   Wed, 25 May 2022 10:58:33 -0400
From:   Mike Snitzer <snitzer@redhat.com>
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     Richard Fontana <rfontana@redhat.com>, linux-spdx@vger.kernel.org,
        Jonathan Brassow <jbrassow@redhat.com>, dm-devel@redhat.com
Subject: Re: treewide: License cleanup - RedHat originated
Message-ID: <Yo5EGfu7ST5os2R/@redhat.com>
References: <165322121770.3770149.18166071018834854082.tglx@xen13>
 <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
 <874k1higgo.ffs@tglx>
MIME-Version: 1.0
In-Reply-To: <874k1higgo.ffs@tglx>
Authentication-Results: relay.mimecast.com;
        auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=snitzer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sun, May 22 2022 at  2:12P -0400,
Thomas Gleixner <tglx@linutronix.de> wrote:

> Richard!
> 
> On Sun, May 22 2022 at 13:33, Richard Fontana wrote:
> > On Sun, May 22, 2022 at 10:55 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> > I assume you're selecting files that have some sort of Red Hat or
> > Sistina copyright notice. Just as a disclaimer, I can't speak to
> > copyrights in these files that may be held by other organizations or
> > individuals (and I can't say definitively whether any file bearing a
> > Red Hat or Sistina copyright notice has or retains any copyright owned
> > by Red Hat). With that said:
> >
> >> 1) this file is released under the gpl
> >
> > I am fine with saying that any Red Hat copyrights (including any
> > Sistina copyrights acquired by Red Hat) in these can be represented
> > with SPDX-License-Identifier: GPL-2.0.
> >
> > I would note that the following files did not seem to have any Red Hat
> > or Sistina copyright notices:
> >
> >>    drivers/md/dm-log-writes.c
> >>    drivers/md/dm-ps-queue-length.c
> >>    drivers/md/dm-ps-service-time.c
> >>    drivers/md/dm-unstripe.c
> >>    drivers/md/dm-zero.c
> 
> Oops, yes. They are clearly flagged as not Red Hat.

True, though Red Hat has contributed code to these files and continues
to mainatin these files.

If we need further approval from original authors I can work to reach
out to them.

Thanks,
Mike

