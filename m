Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CEF7533277
	for <lists+linux-spdx@lfdr.de>; Tue, 24 May 2022 22:28:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236950AbiEXU2u (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 24 May 2022 16:28:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232087AbiEXU2t (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 24 May 2022 16:28:49 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D590162124
        for <linux-spdx@vger.kernel.org>; Tue, 24 May 2022 13:28:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D7C7AB81BB5
        for <linux-spdx@vger.kernel.org>; Tue, 24 May 2022 20:28:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 041DEC34100;
        Tue, 24 May 2022 20:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1653424124;
        bh=JfFTGskkVvNGuBbWPehNVDCnZbtGHUk44ZqsQVAFRUg=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=W6n45us00RzTzNQg09HZu0L+O6+TEOuvXS36WzrgmLM30UC52zA0v+mMoE+z53+Y5
         lnUaZkkGR5Vm7fP0QRCf46J+2xW6PxHp/2+ME3Yt5aJpIxzLtp7B4rnfAX1iFRCrNU
         oNe3wPchZ4avuHoIATfzKaGT1I+Fu4p2WP2EuiBw5MvOKWFNR9ppikKigsCr+ojbZI
         69birau1mTWJZ1FBOHU3zRE+1lZEcaC0SMSjRM0KdIM62Sn/GNQ8uZssH95b+6vM39
         EyrUAZNItzXfxZSj6XWQ3lhi90/pxhW1ntX/KlmV/l8CG4wKB4cGCi3i1tHmtWphsi
         lsmscoRK4wf/w==
Message-ID: <c9a6c3685b9817126044cd733c57cbe9f228f4eb.camel@kernel.org>
Subject: Re: relay: License cleanup
From:   Tom Zanussi <zanussi@kernel.org>
To:     Karim Yaghmour <karim.yaghmour@opersys.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Date:   Tue, 24 May 2022 15:28:42 -0500
In-Reply-To: <ea34a747-2393-142e-3352-74426975f6f5@opersys.com>
References: <165322122630.3770149.12589163038624151820.tglx@xen13>
         <ea34a747-2393-142e-3352-74426975f6f5@opersys.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-7.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Hi Thomas and Karim,

On Sun, 2022-05-22 at 14:14 -0400, Karim Yaghmour wrote:
> Hi Thomas,
> 
> On 5/22/22 10:54, Thomas Gleixner wrote:
> > Tom, Karim!
> > 
> > As you might know we are working on cleaning up the licensing mess
> > in the
> > kernel and convert it to SPDX license identifiers as the only
> > source of
> > license information.
> > 
> > Archaeology found unspecific GPL license references, which have
> > been
> > authored by you.
> > 
> > 1) this file is released under the gpl
> > 
> >     kernel/relay.c
> > 
> > Can you please either send cleanup patches for the affected files
> > or
> > indicate which GPLv2 variant you had in mind and I run it through
> > my
> > cleanup machinery.
> 
> Thanks for the ping.
> 
> I assume you mean the GPLv2 variants from here:
> 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/LICENSES/preferred/GPL-2.0?h=v5.18-rc7
> 
> In that case, I'd say that the intent was to follow what Linus had
> been 
> using: i.e. GPL-2.0 or GPL-2.0-only.
> 
> That said, since it was Tom that got this code included and did most
> of 
> the work on it, I think he'd have to confirm what his view was as
> well.

Yes, GPL-2.0-only was the intent, so please use that and run it through
your cleanup machinery, thanks.

Or I can send a cleanup patch if that's easier for you, just let me
know.

Thanks,

Tom

> 
> Cheers,
> 

