Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B32A4533F9B
	for <lists+linux-spdx@lfdr.de>; Wed, 25 May 2022 16:56:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232176AbiEYO4I (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 25 May 2022 10:56:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231512AbiEYO4I (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 25 May 2022 10:56:08 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id DE2731BE
        for <linux-spdx@vger.kernel.org>; Wed, 25 May 2022 07:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1653490566;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=s2sjvoZpt4zWn2aNFCYiXEU3SMPlIPO8qJSSV6hFX5A=;
        b=TobQ2Apm+p9GHYyLL7jtO1IKZWcG8oll/XKzTOmki34BZC8bL6GuQAcbcUpUvZijJMOVdu
        SVa3FZeNWgn0ScviMFhrrIHsRBop5spLwSMjZy/GpzNUSCg3LVpLzp02jqdIkAfiKlaRgz
        MdaGH2Ap58xa9zXXA1IoIXdSk0IqDZw=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-RtA8lKNqPb2N21QV5AvJXA-1; Wed, 25 May 2022 10:56:04 -0400
X-MC-Unique: RtA8lKNqPb2N21QV5AvJXA-1
Received: by mail-qt1-f200.google.com with SMTP id v14-20020a05622a130e00b002f940c8704dso4204742qtk.21
        for <linux-spdx@vger.kernel.org>; Wed, 25 May 2022 07:56:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=s2sjvoZpt4zWn2aNFCYiXEU3SMPlIPO8qJSSV6hFX5A=;
        b=R9W5puf7F2GrEwQpwEmGhkC8kUamvH4tNZcDK9ZsYKOF5sP7GEiTzXNB4bzgfpk6Yf
         5PIo3AXTRe/kQoibVTGMtLi8pgkhUjJcN3YBSqe5Id645W/C3B+pjZeknWRfAgdrmpGI
         mUOEI07pI5gJokY7pI2bua4Mw1Hw4oxTROtA5eTwf+8/5RpEF7wi0OPxcdPEUcLFKWJ7
         jxE/a34N43pTzOamLn5G9PwS0sgHpUL9+H67GDZYgAzQLHDewcBq9NFIADaQkhou8xvl
         /6gHigblrbeDz0c6ifFZg4yDO6j0L4iZWyPdQlJTBYeGs7pZiFpvmAk36yQzYk6e1YaK
         uNrQ==
X-Gm-Message-State: AOAM53045A5/Ez8gRI6GZASxqqMWdXKrDhy/EEl1Xkcvv108cancm0V3
        sb5/FzgaNL5pq1L0qhbiA8/wgXR4Qmi5WiM/sdVpqvvHut4eMycKXPFhtuBEngrvsBl7rRJucbU
        oMlA53tgB6SN9wkfqmkAc
X-Received: by 2002:ac8:7d4e:0:b0:2f9:f97:2258 with SMTP id h14-20020ac87d4e000000b002f90f972258mr23605217qtb.355.1653490564046;
        Wed, 25 May 2022 07:56:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxTz3epMa4cVr1cAB4KSP7Zdy4tAV0qEiscGFVIlUzsYOzPbqn+P/T+3vZsBljsN4kq/ribIg==
X-Received: by 2002:ac8:7d4e:0:b0:2f9:f97:2258 with SMTP id h14-20020ac87d4e000000b002f90f972258mr23605188qtb.355.1653490563731;
        Wed, 25 May 2022 07:56:03 -0700 (PDT)
Received: from localhost (pool-68-160-176-52.bstnma.fios.verizon.net. [68.160.176.52])
        by smtp.gmail.com with ESMTPSA id 139-20020a370591000000b006a34a22bc60sm1423995qkf.9.2022.05.25.07.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 07:56:03 -0700 (PDT)
Date:   Wed, 25 May 2022 10:56:02 -0400
From:   Mike Snitzer <snitzer@redhat.com>
To:     Richard Fontana <rfontana@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org, Jonathan Brassow <jbrassow@redhat.com>,
        dm-devel@redhat.com
Subject: Re: treewide: License cleanup - RedHat originated
Message-ID: <Yo5DgoAsR+lZfl4l@redhat.com>
References: <165322121770.3770149.18166071018834854082.tglx@xen13>
 <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAC1cPGz4CVCqb7P72sWjJ5S6s6HcxzqiwuykwGFswkovOuALHA@mail.gmail.com>
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

On Sun, May 22 2022 at  1:33P -0400,
Richard Fontana <rfontana@redhat.com> wrote:

> On Sun, May 22, 2022 at 10:55 AM Thomas Gleixner <tglx@linutronix.de> wrote:
> >
> > Richard!
> >
> > Sorry for pestering you, but the amount of files is just too much to split
> > it up and targetting the authors is difficult because quite some of them
> > are not longer at RHT. The files are all (c) RedHat or Sistina Software,
> > which is part of RedHat since 2003.
> >
> > This is part of the effort to clean up the licensing mess in the kernel and
> > convert it to SPDX license identifiers as the only source of license
> > information.
> >
> > Archaeology found the following unspecific GPL license references, which
> > have been authored by RedHat/Sistina.
> >
> > To clean this up, can you please either advise the RHT kernel team or let
> > me know which GPLv2 variant to use for the files and I run it through my
> > cleanup machinery.

Hi Thomas, yes I'd love for you to take on the changes to run through
your machinery.  I think we have consensus in that I agree with
everything Richard has said.  Proposed changes look good, thanks!

> Hi Thomas,
> 
> I assume you're selecting files that have some sort of Red Hat or
> Sistina copyright notice. Just as a disclaimer, I can't speak to
> copyrights in these files that may be held by other organizations or
> individuals (and I can't say definitively whether any file bearing a
> Red Hat or Sistina copyright notice has or retains any copyright owned
> by Red Hat). With that said:
> 
> > 1) this file is released under the gpl
> 
> I am fine with saying that any Red Hat copyrights (including any
> Sistina copyrights acquired by Red Hat) in these can be represented
> with SPDX-License-Identifier: GPL-2.0.
> 
> I would note that the following files did not seem to have any Red Hat
> or Sistina copyright notices:
> 
> >    drivers/md/dm-log-writes.c
> >    drivers/md/dm-ps-queue-length.c
> >    drivers/md/dm-ps-service-time.c
> >    drivers/md/dm-unstripe.c
> >    drivers/md/dm-zero.c

These can all have the following added:
SPDX-License-Identifier: GPL-2.0.

> Skipping category 2 for the moment:
> 
> > 3) (c) 2000 red hat gpl d
> 
> > 4) this code is covered by the gpl
> 
> > 5) this software may be freely redistributed under the terms of the gnu
> >    general public license you should have received a copy of the gnu general
> >    public license along with this program if not write to the free software
> >    foundation inc 675 mass ave cambridge ma 02139 usa
> 
> > 6) released under the general public license (gpl)
> 
> I am fine with saying that any Red Hat copyrights (including any
> Sistina copyrights acquired by Red Hat) in these can be represented
> with SPDX-License-Identifier: GPL-2.0.
> 
> > 2) this file is released under the lgpl
> >
> >    drivers/md/dm-core.h
> >    drivers/md/dm-log-userspace-base.c
> >    drivers/md/dm-log-userspace-transfer.c
> >    drivers/md/dm-log-userspace-transfer.h
> >    drivers/md/dm-log.c
> >    drivers/md/dm-rq.h
> >    drivers/md/dm.h
> >    include/linux/device-mapper.h
> >    include/linux/dm-dirty-log.h
> 
> For these, if the question is just about what version of the LGPL we
> should treat these as, I'd be fine with representing them as
> SDPX-License-Identifier: LGPL-2.1.
> 
> However, and I realize this may go beyond my 'remit' as someone
> consulted for linux-spdx stuff or open some additional bag of worms,
> I'm wondering if these would be better off just relicensed under
> GPLv2, and thus represented as SPDX-License-Identifier: GPL-2.0.

Yes, I think we should do that.

> Even treating this code as having been LGPLv2.x-licensed, this would be
> authorized or at any rate contemplated by the largely-overlooked
> LGPLv2.0/LGPLv2.1 section 3. Suggesting this because it would seem to
> help marginally with some of the goals of this initiative and also
> because it's not obvious to me why LGPL would have been preferred over
> GPLv2 for these files to begin with, assuming they weren't copied from
> some unrelated LGPL-licensed project. I've cc'd Jonathan Brassow and
> Mike Snitzer in case they have any thoughts on this.

Thanks for bringing me in the loop.  I appreciate it.
Right,  No real need for LGPL here (that I'm aware of).

Thomas: do you have all the answers you need?

Mike

