Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E976C531F26
	for <lists+linux-spdx@lfdr.de>; Tue, 24 May 2022 01:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229441AbiEWXQb (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 23 May 2022 19:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbiEWXQU (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 23 May 2022 19:16:20 -0400
Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA6F35F79
        for <linux-spdx@vger.kernel.org>; Mon, 23 May 2022 16:16:02 -0700 (PDT)
Received: by gandalf.ozlabs.org (Postfix, from userid 1011)
        id 4L6Y9F3Q7Vz4xXg; Tue, 24 May 2022 09:16:01 +1000 (AEST)
From:   Rusty Russell <rusty@rustcorp.com.au>
To:     Thomas Gleixner <tglx@linutronix.de>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: netfilter, cpu, modules: License cleanup
In-Reply-To: <165322122056.3770149.6049965782379555513.tglx@xen13>
References: <165322122056.3770149.6049965782379555513.tglx@xen13>
Date:   Mon, 23 May 2022 10:04:30 +0930
Message-ID: <87o7zphysp.fsf@rustcorp.com.au>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_12_24,
        HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Hi Thomas,

        All my kernel code is "either version 2 of the License, or (at
your option) any later version.".

        Technically, some of that code is IBM copyright: the
netfilter_arp.h seems to be.  The module stuff was written during my
transition to IBM, so that's going to need more digging if anyone cares?

Cheers,
Rusty.

Thomas Gleixner <tglx@linutronix.de> writes:
> Rusty!
>
> As you might know we are working on cleaning up the licensing mess in the
> kernel and convert it to SPDX license identifiers as the only source of
> license information.
>
> Archaeology found the following unspecific GPL license references, which
> have been authored by you:
>
>   kernel/cpu.c: * This code is licenced under the GPL.
>
>   include/linux/netfilter_ipv4.h: * (C)1998 Rusty Russell -- This code is GPL.
>   include/linux/netfilter_ipv6.h: * (C)1998 Rusty Russell -- This code is GPL.
>   net/ipv4/netfilter.c: * Rusty Russell (C) 2000 -- This code is GPL.
>   net/ipv6/netfilter.c: * Rusty Russell (C) 2000 -- This code is GPL.
>   net/netfilter/nf_queue.c: * Rusty Russell (C)2000 -- This code is GPL.
>
>   net/netfilter/core.c: * This code is GPL.
>   net/netfilter/core.c lost your (C) with b3a61254d83d5.
>
>   scripts/mod/modpost.c
>   scripts/mod/file2alias.c:
>     * This software may be used and distributed according to the terms
>     * of the GNU General Public License, incorporated herein by reference.
>
>   include/uapi/linux/netfilter_arp.h: * (C)2002 Rusty Russell IBM -- This code is GPL.
>   include/uapi/linux/netfilter_decnet.h: * (C)1998 Rusty Russell -- This code is GPL.
>   include/uapi/linux/netfilter_ipv4.h: * (C)1998 Rusty Russell -- This code is GPL.
>   include/uapi/linux/netfilter_ipv6.h: * (C)1998 Rusty Russell -- This code is GPL.
>
> Can you please either send cleanup patches for the affected files or
> indicate which GPLv2 variant you had in mind and I run it through my cleanup
> machinery.
>
> The files in 'include/uapi/' have already SPDX license tags, but it would
> be nice to remove the 'This code is GPL.' blurb for clarity.
>
> Thanks,
>
> 	Thomas
