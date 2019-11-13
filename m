Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6EA3FFB014
	for <lists+linux-spdx@lfdr.de>; Wed, 13 Nov 2019 12:58:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726057AbfKML6h (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 13 Nov 2019 06:58:37 -0500
Received: from condef-08.nifty.com ([202.248.20.73]:54214 "EHLO
        condef-08.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbfKML6h (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 13 Nov 2019 06:58:37 -0500
X-Greylist: delayed 414 seconds by postgrey-1.27 at vger.kernel.org; Wed, 13 Nov 2019 06:58:36 EST
Received: from conssluserg-05.nifty.com ([10.126.8.84])by condef-08.nifty.com with ESMTP id xADBkt0D025548
        for <linux-spdx@vger.kernel.org>; Wed, 13 Nov 2019 20:46:55 +0900
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179]) (authenticated)
        by conssluserg-05.nifty.com with ESMTP id xADBkm9a015831;
        Wed, 13 Nov 2019 20:46:49 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com xADBkm9a015831
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
        s=dec2015msa; t=1573645609;
        bh=1ubNpZLrnhXlyu3RPs3fBr0mVNdSQ/kPzqbpM1dwK0M=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=XjDCVYJUixS5Ds0Nn5xpa3r3yDjHmUzBHWeTCoFZciGpGr/OLXQOkty/wONciIYak
         KwiYYIN2wcrS7wREc2WjNCys4DxuuPzCRNcR46/4A5ZH0DV7sZRYmfGtH3nxDr3w67
         uZQVMnOyhvvSSGies+IxoCGRuBUVOGlyL2p4Y60fqDMovZg+ctbo3m/ue6Qix7jDKO
         um0RlS/Er1sCqCjH79JRIOEsHYHWCfAmKNZp5Q63M/SykJxMU1kKx/zzUIAM9rao2Y
         TwJt9MzUQzHI+yiUuTPcghSDV/n/q6+CDZR6dJ8rpRVYQsShC2vG8o6P6aeqA2kvva
         moXX4WaV+WvIA==
X-Nifty-SrcIP: [209.85.221.179]
Received: by mail-vk1-f179.google.com with SMTP id r4so475673vkf.9;
        Wed, 13 Nov 2019 03:46:48 -0800 (PST)
X-Gm-Message-State: APjAAAWGGPxvZFGN8d6K/UhkJLuXVajvajsOSbtroL2+/UzMUlD19HG3
        zfglmyH4hOhrvnMTJpSMGW1hJDMwZ6X6/1qcFSY=
X-Google-Smtp-Source: APXvYqxCOSvbIgyJn7QaXffqBOHdbUYvifvtpftshC0h8o88zZUjvsKEOaHwO3irsjmKGOAP57sDoaRv0X99WX7ByBA=
X-Received: by 2002:a1f:6a43:: with SMTP id f64mr16682vkc.96.1573645607742;
 Wed, 13 Nov 2019 03:46:47 -0800 (PST)
MIME-Version: 1.0
References: <20191018045053.8424-1-yamada.masahiro@socionext.com> <20191018101510.GA1172290@kroah.com>
In-Reply-To: <20191018101510.GA1172290@kroah.com>
From:   Masahiro Yamada <yamada.masahiro@socionext.com>
Date:   Wed, 13 Nov 2019 20:46:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNAS3oYkaBTG+59prgu0Yqxn=2vi94mjHbKdx7TXBkPy5Xw@mail.gmail.com>
Message-ID: <CAK7LNAS3oYkaBTG+59prgu0Yqxn=2vi94mjHbKdx7TXBkPy5Xw@mail.gmail.com>
Subject: Re: [PATCH] export,module: add SPDX GPL-2.0 license identifier to
 headers with no license
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-spdx@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Oct 18, 2019 at 7:15 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Fri, Oct 18, 2019 at 01:50:53PM +0900, Masahiro Yamada wrote:
> > Commit b24413180f56 ("License cleanup: add SPDX GPL-2.0 license
> > identifier to files with no license") took care of a lot of files
> > without any license information.
> >
> > These headers were not processed by the tool perhaps because they
> > contain "GPL" in the code.
> >
> > I do not see any license boilerplate in them, so they fall back to
> > GPL version 2 only, which is the project default.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Ah, nice catch!
>
> I'll queue this up to my spdx tree if no one objects.
>
> thanks,
>
> greg k-h


No objection (comment) so far.

I think it is OK to apply this.



-- 
Best Regards
Masahiro Yamada
