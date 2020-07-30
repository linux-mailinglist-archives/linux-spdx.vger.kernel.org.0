Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEE6233AFC
	for <lists+linux-spdx@lfdr.de>; Thu, 30 Jul 2020 23:46:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728751AbgG3Vqt (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 30 Jul 2020 17:46:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728006AbgG3Vqt (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Thu, 30 Jul 2020 17:46:49 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE2DEC061574
        for <linux-spdx@vger.kernel.org>; Thu, 30 Jul 2020 14:46:48 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id k8so7532525wma.2
        for <linux-spdx@vger.kernel.org>; Thu, 30 Jul 2020 14:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexb-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wgSrYhpGekxRZP3lV7wzc1DduVX7xLMamMd+6NIxKag=;
        b=AevcBSO/AYq9UPAtSDw4FCQSNdy0SqgOyF1wN6R2N3j0OuNCGutm1+YlqI8Hm3vX/t
         lNm00L4jYDDTJ4AUA+Qki5NsnwKgXZmkaZ0buEW5dq6+s39a1/O1pdM2dWkxQ7XCRBUD
         gau4R5tTPoAZ+zBCipCxnS5063WOXmOzNJKh46IXbV+mRcydBd/3GP9JstbO26dDMXUt
         0jVMJcBN/8uyViTYyDAdvWa9wZ+z2BD591/9iPb6nBUszgB3DeWAZMVVS9/BlCTM9wxV
         PKar+vG8PwByIn5yl7Av9w9vcQnt7ujMUgoVfLZ6OyKw9DfIOm0shVYl1ZXTxmqWTrMe
         B2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wgSrYhpGekxRZP3lV7wzc1DduVX7xLMamMd+6NIxKag=;
        b=eIeS7SuPxeK/s0lo8rDfGOICsBnovhf44ce0ShHD2Vi6l9Q3puiJyiYcu4Hj30+CkM
         wQiNDoNW5F9lvdn5kgeBiQsXAIHGEumkfBCf+b/vXFnN+lZwiG5fhHueq6FvLwjPyIFj
         gEH2RIeI2BO7MBBMcZomH2qufCSOGYjz4ipz66u3O8EkIB+nbt/f0Mdm/62BYeASdwVx
         376QRah7b8r90dQguoXzl6Rk5MsqkEwrsYZPpCL18y8VvYNmjg0LQE3Mt9gk3jiVN3NY
         2+koYZnkC4RSRRkMXXTqJVXbCLDfP/dcDaWGBlix3JzBNMcuiFofFM8i2hqJFOXEFf3N
         il4g==
X-Gm-Message-State: AOAM533FdzLoQS6BM5McaQ6SJgJXEmjp6UlZ31T4TV7eFXzKUUstE2le
        TdV1wALvS3UtPe/YTAEjkXBdG8EsCkC7EZ49+kTa8g==
X-Google-Smtp-Source: ABdhPJwNe4PAz/SuuqZnBk9Ypuo1k80uzUfHx7Yr1cBrQI5BlDaLAAxtcs4VcLczrjkukxFjOQ39GevbehseRAdkdDM=
X-Received: by 2002:a05:600c:202:: with SMTP id 2mr969575wmi.139.1596145607560;
 Thu, 30 Jul 2020 14:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200713084231.32496-1-grandmaster@al2klimov.de> <20200721145038.GA1991774@kroah.com>
In-Reply-To: <20200721145038.GA1991774@kroah.com>
From:   Philippe Ombredanne <pombredanne@nexb.com>
Date:   Thu, 30 Jul 2020 23:46:11 +0200
Message-ID: <CAOFm3uEj6yt9Y7BmuW9s9ob10v0CJgDbywrxQtJvMOxkgjx9cg@mail.gmail.com>
Subject: Re: [PATCH] LICENSES: Replace HTTP links with HTTPS ones
To:     "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc:     Greg KH <gregkh@linuxfoundation.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-spdx@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Hi Alexander:

On Tue, Jul 21, 2020 at 4:50 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Jul 13, 2020 at 10:42:31AM +0200, Alexander A. Klimov wrote:
> > Rationale:
> > Reduces attack surface on kernel devs opening the links for MITM
> > as HTTPS traffic is much harder to manipulate.
> >
> > Deterministic algorithm:
> > For each file:
> >   If not .svg:
> >     For each line:
> >       If doesn't contain `\bxmlns\b`:
> >         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> >         If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
> >             If both the HTTP and HTTPS versions
> >             return 200 OK and serve the same content:
> >               Replace HTTP with HTTPS.
> >
> > Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> > ---
> >  Continuing my work started at 93431e0607e5.
> >  See also: git log --oneline '--author=Alexander A. Klimov <grandmaster@al2klimov.de>' v5.7..master
> >  (Actually letting a shell for loop submit all this stuff for me.)
> >
> >  If there are any URLs to be removed completely or at least not just HTTPSified:
> >  Just clearly say so and I'll *undo my change*.
> >  See also: https://lkml.org/lkml/2020/6/27/64
> >
> >  If there are any valid, but yet not changed URLs:
> >  See: https://lkml.org/lkml/2020/6/26/837
> >
> >  If you apply the patch, please let me know.
> >
> >  Sorry again to all maintainers who complained about subject lines.
> >  Now I realized that you want an actually perfect prefixes,
> >  not just subsystem ones.
> >  I tried my best...
> >  And yes, *I could* (at least half-)automate it.
> >  Impossible is nothing! :)
> >
> >
> >  LICENSES/dual/Apache-2.0 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/LICENSES/dual/Apache-2.0 b/LICENSES/dual/Apache-2.0
> > index 6e89ddeab187..fd71308fd2c3 100644
> > --- a/LICENSES/dual/Apache-2.0
> > +++ b/LICENSES/dual/Apache-2.0
> > @@ -15,7 +15,7 @@ Apache License
> >
> >  Version 2.0, January 2004
> >
> > -http://www.apache.org/licenses/
> > +https://www.apache.org/licenses/
> >
> >  TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
> >
> > --
> > 2.27.0
> >
>
> You can't change the text of a license that comes from elsewhere.  This
> file is fine as-is.

It is so fine that -FWIW- even the Apache folks toyed with the idea of
updating their license text to switch to HTTPS there and decided not
to [1] which is IMHO a sane thing.

[1] https://issues.apache.org/jira/browse/LEGAL-457
-- 
Cordially
Philippe Ombredanne
