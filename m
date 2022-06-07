Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D0353FF68
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 14:49:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243029AbiFGMtu (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 08:49:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236004AbiFGMts (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 08:49:48 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8D0F13EA2
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 05:49:47 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.west.internal (Postfix) with ESMTP id C23B43200A86;
        Tue,  7 Jun 2022 08:49:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Tue, 07 Jun 2022 08:49:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm2; t=1654606186; x=1654692586; bh=zwLlbiIEmO
        y+C/CXUAH/Zz8trssoAtxDK08KAFVnYj4=; b=QWWvwPIW5QTBVB0Wbr7SVEtnvN
        N/9F+7b6stQoCNdgPUipTJSYfahCd0ikOoFDwp+5DqKONGY6dq1n9f9yQBqajvtv
        aji6kdriZ3O+ZOWnKb+w86wZl6CJGzXJLeRZ9C0/JkOzvrq8s23iMsTzOcUpuZox
        q7o2955U6WJgeEKNG5qLuXXxAdW2+YPXURehCHhucEqzNUp0p6yhmtV6gA1OzFLk
        DYjpncu1xBFaw+dh5GgDXwswo7wvHXALXaLL92o2Xo0YLCAtTxzkhW3ps+Ec8OPY
        NV3vo++nDlEEvuuAvrz5S1ekBXRvxEtHr4Yh8k6qwtmtlJZ7iA/i799jNZ+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; t=1654606186; x=1654692586; bh=zwLlbiIEmOy+C/CXUAH/Zz8trsso
        AtxDK08KAFVnYj4=; b=HkCfLyiqDKm2ZWf/qA0f1Owu908MRBR/5LnSmu6bGGaZ
        1Oi/FLzyg31BW+wEvRvw//D6fedxfzNZVpnmEuMyo5SUs5/D9OEvQhgDOn7ruzP/
        qOUVvlRIeZ3hZYpAa8pvqufW0Ba2YHZEJKqF82k7LfIpFkAkLLzc45wckYSS1+S6
        OjsnqGA2r0mtaKsc+RvPr5MWlSjC2xzl8vx0f2dnHsF/F7Q06/EDxq3iJP+EqhQ/
        2yaUmUJW1AOBPApwaA8culggVG3XTimsLW9qakiOa8dnQkI2YYQHC637z5zuCgc4
        7H2Xa5cRVb5sWmP5CqEVP2+KuKjU/euk0V6XI8yuZA==
X-ME-Sender: <xms:akmfYjL0q-kZoajZmhxlfN7AOgFK4Rt_AecdsduHp8vKxd3-XVGI8A>
    <xme:akmfYnIBqr2KZTWH2xa8kK7pL9VkPnnTFhqT_VdoHWx6qaOR7IlxskK6J-ujXJgMG
    N5iK1U5WwgP7w>
X-ME-Received: <xmr:akmfYrthJ6cnyHdeiziHOxF03cRzQrhMzNyNfObN3v7ysNS9HpuevkBaEoR->
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedruddthedgheehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeehgedvvedvleejuefgtdduudfhkeeltdeihfevjeekje
    euhfdtueefhffgheekteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:akmfYsYK2hTOYfMzVULMa5dlFUtEupfCmcAwuTuyKIJA4-O99vKyjw>
    <xmx:akmfYqY-UKWjJxgioz2Rax1Y-PQKrRbiD5JFBeVfjD7Glh6kI2W1FQ>
    <xmx:akmfYgBtYrFQlDg-2OFfw9darwjkfsBEDCNSgIYajNPJwY4Z8wI2Bg>
    <xmx:akmfYpk6CguS4bMGl3fanQtk0SDEYCvb4AsqUG1kuRkf-iddgoRrVw>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Jun 2022 08:49:45 -0400 (EDT)
Date:   Tue, 7 Jun 2022 14:49:43 +0200
From:   Greg KH <greg@kroah.com>
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [patch 01/25] treewide: Replace GPLv2 boilerplate/reference with
 SPDX - gpl-2.0_8.RULE
Message-ID: <Yp9JZ6RROH3KqGtZ@kroah.com>
References: <20220606200732.204209102@linutronix.de>
 <20220606200810.120819557@linutronix.de>
 <Yp8vcm4WBF7mQi5p@kroah.com>
 <87v8tc4qmv.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v8tc4qmv.ffs@tglx>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jun 07, 2022 at 02:14:32PM +0200, Thomas Gleixner wrote:
> On Tue, Jun 07 2022 at 12:58, Greg KH wrote:
> > On Mon, Jun 06, 2022 at 10:10:17PM +0200, Thomas Gleixner wrote:
> >> ---
> >>  Documentation/driver-api/vfio-mediated-device.rst |    4 +---
> >>  arch/arm/boot/bootp/bootp.lds                     |    5 +----
> >>  include/linux/input/elan-i2c-ids.h                |    5 +----
> >>  3 files changed, 3 insertions(+), 11 deletions(-)
> >
> > I understand the goal to split this up per "rule", but that rule name
> > makes no sense to any kernel developer.  They don't know what it is, or
> > where it came from, or anything else like that.
> 
> I was just reusing the scripts/approach from 3 years ago :)

Ah, forgot about that.  Nevermind then :)

> > This also touches files across subsystems, generally not a good idea.
> > Is your goal to get acks from the people here and then split them up
> > per-subsystem later, or are you thinking you want these merged as-is?
> 
> I assumed that we merge that through your spdx tree. Though it might be
> not the worst idea to route them through the maintainers, so they become
> more aware of the overall problem.

Through the spdx tree is probably simplest as these are all for older
files that almost never get touched.  And if they do, this is the top of
the file so merge conflicts should be non-existent.

thanks,

greg k-h
