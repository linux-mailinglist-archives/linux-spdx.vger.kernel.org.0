Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 751A253EFB0
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 22:34:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233956AbiFFUex (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 16:34:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233911AbiFFUeb (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 16:34:31 -0400
Received: from protestant.ebb.org (protestant.ebb.org [50.56.179.12])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C792281984
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 13:34:19 -0700 (PDT)
Received: from localhost (unknown [216.161.86.19])
        (Authenticated sender: bkuhn)
        by protestant.ebb.org (Postfix) with ESMTPSA id AA6208208C;
        Mon,  6 Jun 2022 13:34:17 -0700 (PDT)
Date:   Mon, 6 Jun 2022 13:31:55 -0700
From:   "Bradley M. Kuhn" <bkuhn@ebb.org>
To:     Richard Fontana <rfontana@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: [Batch 1 - patch 12/25] treewide: Replace GPLv2
 boilerplate/reference with SPDX - gpl-2.0_208.RULE
Message-ID: <Yp5kO61KTCpt0vDw@ebb.org>
References: <20220606195512.584745712@linutronix.de>
 <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAC1cPGzeXeGDKtGPED1tMX1WybjRrxypfw5+SPs_kXwdO7NWiA@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

> On Mon, Jun 6, 2022 at 3:58 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > Based on the normalized pattern:
> >     this program is free software you can redistribute it and/or modify it
> >     under the terms of version 2 of the gnu general public license as
> >     published by the free software foundation  this program is distributed
> >     in the hope that it will be useful all express or implied conditions
> >     representations and warranties including any implied warranty of
> >     merchantability fitness for a particular purpose or non-infringement
> >     are disclaimed except to the extent that such disclaimers are held to
> >     be legally invalid see the gnu general public license for more details
> >     a copy of which can be found in the file copying included with this
> >     package

Richard Fontana replied today:
> I forget how we dealt with things like this in the initial large batch some
> years ago but I remember raising the concern that some bespoke license
> notices contained disclaimer language that was arguably materially
> different in some way from what is found in GPLv2 itself.

I'm not surprised this is coming up again.  This is a critical bug in the
linux-spdx approach that Karen and I had raised early on — regarding the
GPLv2§1 requirement that one must “keep intact all the notices that refer to
this License and to the absence of any warranty”.

There are various approaches to resolving this that perhaps we should discuss
again?


 -- bkuhn
