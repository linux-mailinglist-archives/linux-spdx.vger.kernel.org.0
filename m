Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D91C4961E5
	for <lists+linux-spdx@lfdr.de>; Fri, 21 Jan 2022 16:19:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351356AbiAUPTV (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 21 Jan 2022 10:19:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351244AbiAUPTU (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 21 Jan 2022 10:19:20 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 594EAC06173B;
        Fri, 21 Jan 2022 07:19:20 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id B1885B81EDB;
        Fri, 21 Jan 2022 15:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B851DC340E1;
        Fri, 21 Jan 2022 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1642778357;
        bh=neQ6vOei1zc/oEjQhMRUFkcfKcdImOmYbCERZEq8M30=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=TAS3UTS58VmRZV7mSsFruE+Ms0e/1eOoZGva69KwL7eCmhfd1+6ShktE1YtwgNm6V
         m/Alqkc7ZBvt8obvQtz4kEMFHfZNArDYLhK0YEwZ26ZpWEH2Qy+cbXMFesc+rbewq8
         qcM2H+dd40wm6YMZ62qeN7gbhwj55boJcdR5Pejg=
Date:   Fri, 21 Jan 2022 16:19:12 +0100
From:   Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To:     Christophe Leroy <christophe.leroy@csgroup.eu>
Cc:     Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        "linux-spdx@vger.kernel.org" <linux-spdx@vger.kernel.org>
Subject: Re: [PATCH v3] powerpc: Add missing SPDX license identifiers
Message-ID: <YerO8MjbXlvbMEsZ@kroah.com>
References: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
 <YerEuE6XlslE3Goo@kroah.com>
 <24829c2f-6855-c8d6-7ae4-17c5517f890d@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <24829c2f-6855-c8d6-7ae4-17c5517f890d@csgroup.eu>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Jan 21, 2022 at 03:13:50PM +0000, Christophe Leroy wrote:
> 
> 
> Le 21/01/2022 � 15:35, Greg Kroah-Hartman a �crit�:
> > On Fri, Jan 21, 2022 at 11:03:20AM +0000, Christophe Leroy wrote:
> >> Several files are missing SPDX license identifiers.
> >>
> >> Following files are given the following SPDX identifier based on the comments in the top of the file:
> >>
> >> 	boot/crtsavres.S:/* SPDX-License-Identifier: GPL-2.0+ */
> > 
> > Are you sure that this is the correct license for this file?
> 
> it says "... GNU General Public License ... either version 2, or (at 
> your option) any later version".
> 
> Isn't it what GPL-2.0+ means ?

Yes, but look further down, as I point out below...

> >> 	include/asm/epapr_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */
> >> 	include/asm/fsl_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */
> >> 	include/asm/ibmebus.h:/* SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD */
> >> 	include/asm/sfp-machine.h:/* SPDX-License-Identifier: LGPL-2.0+ */
> >> 	kvm/mpic.c:// SPDX-License-Identifier: GPL-2.0
> >> 	lib/crtsavres.S:/* SPDX-License-Identifier: GPL-2.0+ */
> >> 	mm/book3s64/hash_4k.c:// SPDX-License-Identifier: LGPL-2.0
> >> 	mm/book3s64/hash_64k.c:// SPDX-License-Identifier: LGPL-2.0
> >> 	mm/book3s64/hash_hugepage.c:// SPDX-License-Identifier: LGPL-2.1
> >> 	platforms/pseries/ibmebus.c:// SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD
> >> 	tools/head_check.sh:# SPDX-License-Identifier: GPL-2.0+
> >> 	xmon/ppc.h:/* SPDX-License-Identifier: GPL-1.0+ */
> >>
> >> Add to other files the default kernel license identifier, in extenso GPL-2.0.
> >>
> >> DTS files are handled in a separate commit.
> >>
> >> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> >> Cc: Thomas Gleixner <tglx@linutronix.de>
> >> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >> Cc: linux-spdx@vger.kernel.org
> >> ---
> >> v3: Removed license text and license note in the files that have any.
> >>
> >> v2: Changed from GPL-2.0 to a licence consistant with the file's comments for the few files listed in the commit message.
> >> ---
> 
> ...
> 
> >>   92 files changed, 105 insertions(+), 422 deletions(-)
> > 
> > You might want to change less of these at once, as this is hard to
> > review as-is.
> 
> Ok
> 
> > 
> >> diff --git a/arch/powerpc/boot/crtsavres.S b/arch/powerpc/boot/crtsavres.S
> >> index 085fb2b9a8b8..25e924459dcc 100644
> >> --- a/arch/powerpc/boot/crtsavres.S
> >> +++ b/arch/powerpc/boot/crtsavres.S
> >> @@ -1,3 +1,4 @@
> >> +/* SPDX-License-Identifier: GPL-2.0+ */
> >>   /*
> >>    * Special support for eabi and SVR4
> >>    *
> >> @@ -7,11 +8,6 @@
> >>    *
> >>    * Based on gcc/config/rs6000/crtsavres.asm from gcc
> >>    *
> >> - * This file is free software; you can redistribute it and/or modify it
> >> - * under the terms of the GNU General Public License as published by the
> >> - * Free Software Foundation; either version 2, or (at your option) any
> >> - * later version.
> >> - *
> >>    * In addition to the permissions in the GNU General Public License, the
> >>    * Free Software Foundation gives you unlimited permission to link the
> >>    * compiled version of this file with other programs, and to distribute
> >> @@ -20,16 +16,6 @@
> >>    * respects; for example, they cover modification of the file, and
> >>    * distribution when not linked into another program.)
> >>    *
> >> - * This file is distributed in the hope that it will be useful, but
> >> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> >> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> >> - * General Public License for more details.
> >> - *
> >> - * You should have received a copy of the GNU General Public License
> >> - * along with this program; see the file COPYING.  If not, write to
> >> - * the Free Software Foundation, 51 Franklin Street, Fifth Floor,
> >> - * Boston, MA 02110-1301, USA.
> >> - *
> >>    *    As a special exception, if you link this library with files
> >>    *    compiled with GCC to produce an executable, this does not cause
> >>    *    the resulting executable to be covered by the GNU General Public License.
> > 
> > Look at that "special exception", why are you ignoring it here?  You
> > can't do that :(
> 
> I'm not ignoring it, that's the reason why I left it.

You ignore that part of the license in the SPDX line, why?

> Isn't it the correct way to do ? How should it be done ?

You need to properly describe this in the SPDX line.  You did not do so
here, which means that any tool just looking at the SPDX line would get
this license wrong.

thanks,

greg k-h
