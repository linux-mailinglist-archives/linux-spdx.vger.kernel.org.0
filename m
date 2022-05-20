Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7B652EF4F
	for <lists+linux-spdx@lfdr.de>; Fri, 20 May 2022 17:37:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350879AbiETPhK (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 20 May 2022 11:37:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243036AbiETPhJ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 20 May 2022 11:37:09 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E9A19D058
        for <linux-spdx@vger.kernel.org>; Fri, 20 May 2022 08:37:07 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653061024;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qYqfCGKaPYGXbaYNAJZVDwQzyvnB97YR3H7EhHGKX4s=;
        b=SaKiL8QDZxKfCkqIP07oNIjtWP2pnqXDtq9J581i/2rX2xLFfPXj1PDOdT2p3mdRpOJRRu
        WEQ1A8a1vg8srItcaxQhXLU8HlpzbUtacCLgn8UA/6ZSNS2jg9gQKuZUs004aMJfRy2niP
        RbGJokfcwA4kyf0XSNryoG8/6ZWdd7kJvJc0BQ5XCqQDu/SObv7zNUt6n9j/NFAAgG6OOD
        Ih5cL3FqbUfTFqHMxbMyRgAD58eii0fMA2rB73XIAEJZGn8p1puQzWE5q+rpCaBw6HCgy3
        tAbE6LOrQqQp82Qt0HAu+HdEKP/Oame0I7EkqKZbkI1AWSbH/f0tN37X8AIq+g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653061024;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qYqfCGKaPYGXbaYNAJZVDwQzyvnB97YR3H7EhHGKX4s=;
        b=CFsbeShNHjFyVigTX06TO40JW2BwbiC2g1WPKavFsHm5atuv98RxDvNTkJfg43FNX1uXd7
        KolJgZIlf2n5ieBQ==
To:     Allison Randal <allison@lohutok.net>, linux-spdx@vger.kernel.org
Subject: Re: SPDX in the kernel: State of the union
In-Reply-To: <9ea648b2-3430-bec8-c697-3017283e03b1@lohutok.net>
References: <87zgjfka75.ffs@tglx>
 <9ea648b2-3430-bec8-c697-3017283e03b1@lohutok.net>
Date:   Fri, 20 May 2022 17:37:04 +0200
Message-ID: <87y1ywi5b3.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Wed, May 18 2022 at 09:42, Allison Randal wrote:
> On 5/17/22 7:31 PM, Thomas Gleixner wrote:
> I actually thought you just ran out of easily scriptable fixes, but it's
> nice to hear that there's still substantially more we can do with
> scancode rules.

I ran out of cycles :)

> With the auto-generated patches, you will probably need to rate-limit
> like you did in 2019, since the tools can generate patches far more
> rapidly than the humans can review them.

Sure.

> If you have the time and energy to do another burst, go for it. I don't
> know that we'll ever get to 100%, but every file we clean up is helpful,
> so it's worth continuing.

I started to get some structure into this mess. For the first step I
excluded the Documentation directory unless files in that, which fit
into match rules applying to source files. I'll tend to the
Documentation directory in a seperate step.

Then I categorized the remaining match rules into the following:

Nr   Category        Rules     Files affected
 1   GPLv2[+]	    141	         1607
 2   GPL unknown     84	         1663
 3   MIT	     28	         3275
 4   GPLv2/MIT	      2	           36
 5   BSD	     20	          114
 6   GPL/BSD	     32          1004
 7   ISC	      4           343
 8   X11	      1             3
 9   Other	      9            50
10   Unclear	     63	          916
11   Unknown	     78	          321
12   Nasty	     16	           48
13   Bogus	     21	          861

#1 Pretty clear GPLv2[or later] and LGPL matches.

#2 The nasty 'under GPL' ones. Quite some of them reference COPYING

#3-9 Pretty clear matches for MIT/BSD/ISC/X11/ZLIB and GPL combos of
     those

#10 The unclear (at least to me) ones

#11 Licenses the kernel does not have (yet) in the LICENSES
    directory, but some of them are not really clear to me

#12 GPL version 1 and version 3, reiserfs and some proprietary

#13 A set of bogosities in scancode which I need to discuss
    with Philippe.

I probably made some mistakes here and there, but that's what I have
now.

I've generated static HTML pages from the data, which are available
here:

   https://tglx.de/~tglx/spdx/index.html

so you can get a taste of what is coming to you sooner than later. The
categories link to pages with rules and the rules to a per rule details
page. The latter has links to a Linux cross reference site in case you
want to look at the real think instead of the 'normalized' match
patterns on the rule page.

My plan is to start with categories #1 and #3-9 and send out batches of
patches to the list.

Which size of batches and what rate do you folks prefer?

Thanks,

        tglx
