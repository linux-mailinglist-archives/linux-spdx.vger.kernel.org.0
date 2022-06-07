Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C704C53FB61
	for <lists+linux-spdx@lfdr.de>; Tue,  7 Jun 2022 12:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241135AbiFGKeV (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 7 Jun 2022 06:34:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241118AbiFGKeR (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 7 Jun 2022 06:34:17 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E9A6EC7C
        for <linux-spdx@vger.kernel.org>; Tue,  7 Jun 2022 03:34:13 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654598050;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qaOOXM+ME8Sad5USE165F1zwW84H8ENxD0j2FrAR0pw=;
        b=UId2m6QUyEeEIRPuqS1C3/7BHMYf4NAZ1uBb5KDSKghhN12tLii+Bx0L/5R4uUO5cjsgOO
        GNb8d5wqQnR4kdFeHE/0VuJdAHWBbMD2rYMvwMYRdEs+LDXbaDTiYhQaK5+lZ6eO6d77Xg
        /iPux0RM3AoQ+y2OXgvzaxWKc6rIJK/5qk+feiIylvDRsg/jT9ZGavnCz5d1Q/AYF3YIyy
        QNfLPQwQmnDgQwp/7WGw1oSXwvhflvaMQo85a18xnChJ5p97LvEJ9LzcnYtngfUzzssZyA
        Zke2qk+puvlFzx3daBep7jdSTnEOfvRHqiJi/saEh/ndwyYtdTdDENip3P5fdA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654598050;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=qaOOXM+ME8Sad5USE165F1zwW84H8ENxD0j2FrAR0pw=;
        b=euWk3+Kox9Ew/chef0sO8Eu5YWkpqC3FrCMUEvqMLcNF6oz8qZaopEJ6IOu+/TEA4CLS/O
        2xywKC+9h+hgTMDw==
To:     linux-spdx@vger.kernel.org
Subject: Re: [patch repost 00/25] The first batch of various GPLv2
 boilerplates and references
In-Reply-To: <20220606200732.204209102@linutronix.de>
References: <20220606200732.204209102@linutronix.de>
Date:   Tue, 07 Jun 2022 12:34:10 +0200
Message-ID: <87zgio4va5.ffs@tglx>
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

On Mon, Jun 06 2022 at 22:10, Thomas Gleixner wrote:
> Folks!
>
> Sorry for the noise. I'm resending this because I fatfingered the
> initial submission and my patch mail scripts did not notice and the
> mail headers are broken which breaks threading.
>
> The fun starts again. Here comes the first batch of GPLv2 boilerplates and
> references. As 3 years ago, I ran scancode over v5.19-rc1 and categorized
> the license boilerplates and references.
>
> Each patch contains exactly one normalized match pattern. Normalization
> takes formatting, punctuation etc. out of the picture to reduce the amount
> of different patterns to look at.
>
> This batch contains the first 25 match patterns which scancode
> detected as clear GPLv2 only boilerplates or references. It touches a
> total of 912 files and removes about 7000 lines of gunk.
>
> The series is also available from git:
>
>     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/linux-spdx.git 2022-batch1

I just noticed that patches 3, 4 and 10 did not get delivered. It seems
they trigger the size limit of the list.

I'll split them up into smaller junks.

Thanks,

        tglx
