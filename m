Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0021530EF1
	for <lists+linux-spdx@lfdr.de>; Mon, 23 May 2022 15:17:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234424AbiEWKvu (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 23 May 2022 06:51:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234467AbiEWKvJ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 23 May 2022 06:51:09 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3455660FC
        for <linux-spdx@vger.kernel.org>; Mon, 23 May 2022 03:51:04 -0700 (PDT)
From:   Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1653303062;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FCfSi/cSpZxgBuz+rSp/rpWT/OC9lnkYZAyP3l2hXjY=;
        b=ZW3TwvWU6O4ANpPR8a3sEYLzsKdOEL3vnl9d9RN+LXSFOQ4TR8vk6gpfbdqw2RUXvrHCPY
        fjgj8bBLtxr+u/1wzVNzTlZhh8i7++m6zCdFcdaSGKJMjeRcZNVrkOsf6N3955mOH2A1K5
        jnUKlhFlMMaAmTPz3Bcmk+UgwDXHHKYiKpPiwQtIcf8rkHusAHvNEQAJNnsgfFzXmr9mAe
        41Y4RFUjiHsOCN2idyIpm+FMaI+veL4t0b6mA6zS/uZAhF0Kkjql2JxYp+vYhZByca1RcA
        bf9v1ylozUWQA3WCztNABtLR9nTqBt1CoLMeFguVjva1cgRz7NeDaHDDurM64g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1653303062;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FCfSi/cSpZxgBuz+rSp/rpWT/OC9lnkYZAyP3l2hXjY=;
        b=N7ZGHsk1UIgh1jyYGYrG9CNpZbFzJy9of/ANC6aa685wFq4bNX2BanOPQxiGdqTS3Qo+x+
        9OgmGrUXm/fKR5AQ==
To:     Linus Torvalds <torvalds@linux-foundation.org>
Cc:     linux-spdx@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>
Subject: Re: mm, [c]ramfs: License cleanup
In-Reply-To: <871qwkincf.ffs@tglx>
References: <165322121483.3770149.17793045179048278100.tglx@xen13>
 <CAHk-=whUgwJd21koy8UPk10s+Rd5Fg1MGva4uS4Vyd+15QWvSg@mail.gmail.com>
 <871qwkincf.ffs@tglx>
Date:   Mon, 23 May 2022 12:51:01 +0200
Message-ID: <87y1ysh696.ffs@tglx>
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

On Mon, May 23 2022 at 11:56, Thomas Gleixner wrote:
> Further digging revealed that there are two variants of historic
> unspecific "boilerplate":
>
>  1) "This file is subject to the terms and conditions of the GNU General
>      Public License.  See the file "COPYING" in the main directory of
>      this archive for more details."
>
>  2) "This file is released under the GPL."
>
> #1 had a first appearance in v1.1.45 (released August 15, 1994)
>
>    This one was not added by you. It was added by Ralf B=C3=A4chle in
>    preparation for MIPS support when he split up the toplevel Makefile
>    and include/asm files. The resulting arch/i386/Makefile with this got
>    copied into Makefiles all over the place (39 as of today). The total
>    spread of this boilerplate is 1046 instances.
>
> #2 surfaced in 2.3.35 (released Decemeber 19, 1999)
>
>    This is definitely your invention.
>
>    But it did not become so popular. Only 93 instances today.

The first unspecific GPL reference in the kernel was:

    * Public License (GPL)

    Courtesy to Ted Tso in 0.97.6 (September 20, 1992)

    It survived until today in serial.h and the uapi split offs, but got
    no traction.

followed by a networking update in 0.99.10 (June 7, 1993):

   /* This file is distributed under the GPL.

  It's not entirely clear who added this, but there is are hints:
  Donald Becker, Russ Nelson and Crynwr Software (Nelsons company)

  This also added the file net/inet/LICENSE.8390 with the following
  content:

    Code in this directory written at the IDA Supercomputing Research Center
    carries the following copyright and license.

    Copyright 1993 United States Government as represented by the
    Director, National Security Agency.  This software may be used
    and distributed according to the terms of the GNU Public License,
    incorporated herein by reference.

    In addition to the disclaimers in the GPL, SRC expressly disclaims any
    and all warranties, expressed or implied, concerning the enclosed softw=
are.
    This software was developed at SRC for use in internal research, and the
    intent in sharing this software is to promote the productive interchange
    of ideas throughout the research community.   All software is furnished
    on an "as-is" basis.  No further updates to this software should be
    expected.  Although updates may occur, no commitment exists.

  This file is still in the source tree: drivers/net/LICENSE.SRC
  Though there is nothing referencing this file at all.

  That file came from Donald with the 8390 driver:

    "8390.c:v0.99-10 5/28/93 for 0.99.6+ Donald Becker (becker@super.org)\n"

  Funny enough the current version string in 8390.c is:

    "8390.c:v1.10cvs 9/23/94 Donald Becker (becker@cesdis.gsfc.nasa.gov)\n";

  I doubt that any of those email addresses is still valid.

Oh well....

Thanks,

        tglx

