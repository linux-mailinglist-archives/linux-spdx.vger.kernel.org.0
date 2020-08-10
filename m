Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9443824136F
	for <lists+linux-spdx@lfdr.de>; Tue, 11 Aug 2020 00:56:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727010AbgHJW4M (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 10 Aug 2020 18:56:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726775AbgHJW4K (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 10 Aug 2020 18:56:10 -0400
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com [IPv6:2607:f8b0:4864:20::b43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C44EC06174A;
        Mon, 10 Aug 2020 15:56:10 -0700 (PDT)
Received: by mail-yb1-xb43.google.com with SMTP id e187so6020576ybc.5;
        Mon, 10 Aug 2020 15:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ckbscItG3D9X9bU57nAKJbw7oFgwmBm0zna135Ii13I=;
        b=eGXWwBGv5ArYE6y3kB7tDjjbtQK2KtLJ9mktmkkAVtjsku60CLdmq1VmrEhDpaFxym
         VA547nWwl+KGHdNZr5HprzKyMvt9JIkuzIhcxyHyf3wpIzNevCHwKfCIYiPPWyP/u4Up
         ATDbZUR9Vsx+tFWB+GmLG/zNEJ46gcZIRt0FvN6vUEAOA0unP/VyAdpwh7AwkuwFoPJ0
         l8YHWLmMjS3CdZLk08Ho+hMnBtOSkpWZklhE7hXXw8QBsZZKRJkZOCYawkKMvDaQzqjj
         kmu18QiQ5xOHSFStQ+as6G5BcjtyVUW1hiufdqVI7BL7+BH9/8rBKn0K9AE7/YzM3aiN
         hJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ckbscItG3D9X9bU57nAKJbw7oFgwmBm0zna135Ii13I=;
        b=Z7FHQekJkTYzqXXaN+PaN5XUgTtq7KRlXV7EPUy3rwSPYDKtjh4E9nYHG+kojsylNn
         zZB/P/fFPa1JU8UW4hbz0GFRZLpCBAC9c6kLPHOGP7KEbenHGHd663LHpPyyiHphqtxR
         HVz7P27EQdPOU1d3bl7YxpJc2SqbmXJbDrDPeGE0NLd1eDkHEPG1oGZTIAPAurTlRDN8
         a8gNBs0GPwjXOi/jIXiGSOt2rDxMIjaeKSEA4fBQG8Ua9rXZPMJUYaF1/BtIOw43D3aW
         QLdDI0PUyEMmEeHf3bSk4QcseGVdDsmQyf4OpwKfOB//bclsapjFOwDf0fYvQzVSJf2T
         3FHA==
X-Gm-Message-State: AOAM5322sm/P0/KYaMW0Nu6olGZcE7zmqqgHQ2eVa8xenN9LryItW1N+
        IBsdXiuwnENbJFUUvMMe10/NR6D8S0bvcq8ZNHk=
X-Google-Smtp-Source: ABdhPJwI6I3PWxjjF9fAO/CzjIWk8a566/WgK3q0G5Wp2QHc7OlifBoPBgUNdktdO71W5NXvBJmhchOQ7TOoYDCE0Ko=
X-Received: by 2002:a25:2e12:: with SMTP id u18mr40482048ybu.200.1597100169627;
 Mon, 10 Aug 2020 15:56:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAPM=9ty8hOY0m2+RJdRiRADY5Li-hs3ZaDEK-DTf6rgFewar7g@mail.gmail.com>
 <20200810122320.GA20549@infradead.org> <CAPM=9tyDkW5rzz0PVQUXf0EnDoebRnD_Td=ZCWV1-LwvHE3Scg@mail.gmail.com>
In-Reply-To: <CAPM=9tyDkW5rzz0PVQUXf0EnDoebRnD_Td=ZCWV1-LwvHE3Scg@mail.gmail.com>
From:   Ben Skeggs <skeggsb@gmail.com>
Date:   Tue, 11 Aug 2020 08:55:58 +1000
Message-ID: <CACAvsv7B0dykiJYQwyoXepD004eF-VFC--xHcFUbCQtA6DO4Mw@mail.gmail.com>
Subject: Re: [git pull] drm next for 5.9-rc1
To:     Dave Airlie <airlied@gmail.com>
Cc:     Christoph Hellwig <hch@infradead.org>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        LKML <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Ben Skeggs <bskeggs@redhat.com>, linux-spdx@vger.kernel.org,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, 11 Aug 2020 at 04:46, Dave Airlie <airlied@gmail.com> wrote:
>
> On Mon, 10 Aug 2020 at 22:23, Christoph Hellwig <hch@infradead.org> wrote:
> >
> > On Thu, Aug 06, 2020 at 11:07:02AM +1000, Dave Airlie wrote:
> > > nouveau:
> > > - add CRC support
> > > - start using NVIDIA published class header files
> >
> > Where does Nvdia provide them?  I looked into the commits and the
> > Nouveau mailing list archives and could not find anything.
>
> https://github.com/NVIDIA/open-gpu-doc
>
> Is I believe the canonical upstream source for them.
> >
> > Note that various new files with a MIT boilerplate instead of
> > an SPDX tag.
>
> Ben might just have imported them directly, so SPDX tags might need to
> be sent upstream and see if they accept them.
Yeah, I decided to play it safe and keep NVIDIA's headers as-provided,
just trimmed down to the parts we're using.

Ben.

>
> Dave.
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
