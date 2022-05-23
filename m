Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8AFB530CF7
	for <lists+linux-spdx@lfdr.de>; Mon, 23 May 2022 12:41:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233754AbiEWJ4j (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 23 May 2022 05:56:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233737AbiEWJ4h (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 23 May 2022 05:56:37 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [IPv6:2a0a:51c0:0:12e:550::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DD7AD51
        for <linux-spdx@vger.kernel.org>; Mon, 23 May 2022 02:56:36 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653299793;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=q24kYzFnamCxvw9BcNF7eJMNCIltQyzesD0yOZAOtng=;
        b=1YB4k1gDhN9rHhwVc/F6FP2bhHZYwGp+mPiQflGLWz/+64dSK731PKpCKaB70H6bW3853z
        exEfTMpUEWw/WK2LCuv7OFAwoK1BAYTiKwawDlJ0ovAfsfQH+RSkCkVY0ZtE5ufH93BPzg
        OULi1xmxjdgRTlyjYqAUYiU0kISV0Te2oDf/od75/3aX2O6QXQXMMULIw6LT9rPy3MzhcH
        Bf9z+4ACxisrEtouMgUdLOA4qd8YeRgoY690+Q1nH4Y4GZZ5wrUm48AjTwmLtbqjhrLKqH
        n+5EH9F+jOuA7tYzZIvjqkfR7FMgpQRV9YA4hvV0P4z/aUATnQocon1x9COnow==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653299793;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=q24kYzFnamCxvw9BcNF7eJMNCIltQyzesD0yOZAOtng=;
        b=aLRfUaWu7xuYAErEv0tSAYLkHaaJ0q8OyrEBXSAPBUjWU7v0kIHyYubEzaglECFf3kcWe8
        tCAkSZuOF18gS/Bw==
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     linux-spdx@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>
Subject: Re: mm, [c]ramfs: License cleanup
In-Reply-To: <CAHk-=whUgwJd21koy8UPk10s+Rd5Fg1MGva4uS4Vyd+15QWvSg@mail.gmail.com>
References: <165322121483.3770149.17793045179048278100.tglx@xen13>
 <CAHk-=whUgwJd21koy8UPk10s+Rd5Fg1MGva4uS4Vyd+15QWvSg@mail.gmail.com>
Date:   Mon, 23 May 2022 11:56:32 +0200
Message-ID: <871qwkincf.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Linus,

On Sun, May 22 2022 at 08:01, Linus Torvalds wrote:
> On Sun, May 22, 2022 at 4:54 AM Thomas Gleixner <tglx@linutronix.de> wrot=
e:
>> Can you please either send cleanup patches for the affected files or
>> indicate which GPLv2 variant you had in mind and I run it through my
>> cleanup machinery.
>
> Heh. All my historical code should be considered to be GPLv2-only.
>
> As I'm sure you already knew, but wanted explicit confirmation of.

As from anybody else. :)

> So please take this email as the confirmation for those files (and any
> future historical archeology you do and find any other cases).

Further digging revealed that there are two variants of historic
unspecific "boilerplate":

 1) "This file is subject to the terms and conditions of the GNU General
     Public License.  See the file "COPYING" in the main directory of
     this archive for more details."

 2) "This file is released under the GPL."

#1 had a first appearance in v1.1.45 (released August 15, 1994)

   This one was not added by you. It was added by Ralf B=C3=A4chle in
   preparation for MIPS support when he split up the toplevel Makefile
   and include/asm files. The resulting arch/i386/Makefile with this got
   copied into Makefiles all over the place (39 as of today). The total
   spread of this boilerplate is 1046 instances.

#2 surfaced in 2.3.35 (released Decemeber 19, 1999)

   This is definitely your invention.

   But it did not become so popular. Only 93 instances today.

Thanks,

        tglx
