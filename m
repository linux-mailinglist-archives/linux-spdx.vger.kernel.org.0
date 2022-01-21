Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71BBD49612C
	for <lists+linux-spdx@lfdr.de>; Fri, 21 Jan 2022 15:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348825AbiAUOfw (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Fri, 21 Jan 2022 09:35:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381282AbiAUOfp (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Fri, 21 Jan 2022 09:35:45 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60E0FC06173D;
        Fri, 21 Jan 2022 06:35:45 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F2AE5618E5;
        Fri, 21 Jan 2022 14:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE0F2C340E1;
        Fri, 21 Jan 2022 14:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1642775744;
        bh=1F0QcO3YnTe35+nYpus7GLcDm6uFJD09iGcRztIPfOc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=A7FV0I9dZrmbKehhKjWyoNoW/GU4q6nf6pGRhIFOpsLoF43k4VvoqOmbFEZRcNpE5
         rLMrtDe38Q3N8mZrmP9be+ptl3W4haE5GL11UBHc1PoLizMQJ58H64ryhd/4PmxxXU
         Eamn6hvtzcheNkIlq99rBJx2lqAFyfWhTb9inGTU=
Date:   Fri, 21 Jan 2022 15:35:36 +0100
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
Message-ID: <YerEuE6XlslE3Goo@kroah.com>
References: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d2c52284244d6dcb3472d2041abe43b456d116df.1642762977.git.christophe.leroy@csgroup.eu>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Jan 21, 2022 at 11:03:20AM +0000, Christophe Leroy wrote:
> Several files are missing SPDX license identifiers.
> 
> Following files are given the following SPDX identifier based on the comments in the top of the file:
> 
> 	boot/crtsavres.S:/* SPDX-License-Identifier: GPL-2.0+ */

Are you sure that this is the correct license for this file?

Also you dropped the arch/powerpc/ prefix here...


> 	include/asm/epapr_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */
> 	include/asm/fsl_hcalls.h:/* SPDX-License-Identifier: GPL-2.0+ OR BSD */
> 	include/asm/ibmebus.h:/* SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD */
> 	include/asm/sfp-machine.h:/* SPDX-License-Identifier: LGPL-2.0+ */
> 	kvm/mpic.c:// SPDX-License-Identifier: GPL-2.0
> 	lib/crtsavres.S:/* SPDX-License-Identifier: GPL-2.0+ */
> 	mm/book3s64/hash_4k.c:// SPDX-License-Identifier: LGPL-2.0
> 	mm/book3s64/hash_64k.c:// SPDX-License-Identifier: LGPL-2.0
> 	mm/book3s64/hash_hugepage.c:// SPDX-License-Identifier: LGPL-2.1
> 	platforms/pseries/ibmebus.c:// SPDX-License-Identifier: GPL-2.0 OR OpenIB BSD
> 	tools/head_check.sh:# SPDX-License-Identifier: GPL-2.0+
> 	xmon/ppc.h:/* SPDX-License-Identifier: GPL-1.0+ */
> 
> Add to other files the default kernel license identifier, in extenso GPL-2.0.
> 
> DTS files are handled in a separate commit.
> 
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: linux-spdx@vger.kernel.org
> ---
> v3: Removed license text and license note in the files that have any.
> 
> v2: Changed from GPL-2.0 to a licence consistant with the file's comments for the few files listed in the commit message.
> ---
>  arch/powerpc/Makefile                         |  5 +--
>  arch/powerpc/boot/44x.h                       |  5 +--
>  arch/powerpc/boot/4xx.h                       |  5 +--
>  arch/powerpc/boot/crtsavres.S                 | 16 +---------
>  arch/powerpc/boot/dummy.c                     |  1 +
>  arch/powerpc/boot/install.sh                  |  5 +--
>  arch/powerpc/boot/ops.h                       |  6 ++--
>  arch/powerpc/boot/serial.c                    |  6 ++--
>  arch/powerpc/boot/simple_alloc.c              |  6 ++--
>  arch/powerpc/include/asm/8xx_immap.h          |  1 +
>  arch/powerpc/include/asm/asm-compat.h         |  1 +
>  arch/powerpc/include/asm/asm-const.h          |  1 +
>  arch/powerpc/include/asm/asm-offsets.h        |  1 +
>  arch/powerpc/include/asm/cpm.h                |  1 +
>  arch/powerpc/include/asm/dtl.h                |  1 +
>  arch/powerpc/include/asm/edac.h               |  6 ++--
>  arch/powerpc/include/asm/ehv_pic.h            |  5 +--
>  arch/powerpc/include/asm/emergency-restart.h  |  1 +
>  arch/powerpc/include/asm/epapr_hcalls.h       | 32 +------------------
>  arch/powerpc/include/asm/fixmap.h             |  5 +--
>  arch/powerpc/include/asm/floppy.h             |  5 +--
>  arch/powerpc/include/asm/fs_pd.h              |  5 +--
>  arch/powerpc/include/asm/fsl_hcalls.h         | 32 +------------------
>  arch/powerpc/include/asm/hydra.h              |  5 +--
>  arch/powerpc/include/asm/ibmebus.h            | 29 +----------------
>  arch/powerpc/include/asm/kgdb.h               |  6 ++--
>  arch/powerpc/include/asm/membarrier.h         |  1 +
>  arch/powerpc/include/asm/module.lds.h         |  1 +
>  arch/powerpc/include/asm/mpc52xx.h            |  5 +--
>  arch/powerpc/include/asm/mpc52xx_psc.h        |  5 +--
>  arch/powerpc/include/asm/pmac_feature.h       |  5 +--
>  arch/powerpc/include/asm/ppc_asm.h            |  1 +
>  arch/powerpc/include/asm/pte-walk.h           |  1 +
>  arch/powerpc/include/asm/rheap.h              |  6 ++--
>  arch/powerpc/include/asm/sfp-machine.h        | 16 +---------
>  arch/powerpc/include/asm/vmalloc.h            |  1 +
>  arch/powerpc/include/asm/word-at-a-time.h     |  1 +
>  arch/powerpc/kernel/interrupt_64.S            |  1 +
>  arch/powerpc/kernel/kgdb.c                    |  5 +--
>  arch/powerpc/kernel/ptrace/ptrace.c           |  5 +--
>  arch/powerpc/kernel/ptrace/ptrace32.c         |  5 +--
>  arch/powerpc/kernel/signal.c                  |  5 +--
>  arch/powerpc/kernel/signal.h                  |  5 +--
>  arch/powerpc/kernel/vdso32/note.S             |  1 +
>  arch/powerpc/kernel/vdso64/note.S             |  1 +
>  arch/powerpc/kvm/mpic.c                       | 19 +----------
>  arch/powerpc/lib/crtsavres.S                  | 16 +---------
>  arch/powerpc/lib/restart_table.c              |  1 +
>  arch/powerpc/lib/rheap.c                      |  6 ++--
>  arch/powerpc/mm/book3s64/hash_4k.c            | 10 +-----
>  arch/powerpc/mm/book3s64/hash_64k.c           | 10 +-----
>  arch/powerpc/mm/book3s64/hash_hugepage.c      | 10 +-----
>  arch/powerpc/mm/hugetlbpage.c                 |  1 +
>  arch/powerpc/perf/req-gen/_end.h              |  1 +
>  arch/powerpc/platforms/44x/fsp2.h             |  1 +
>  arch/powerpc/platforms/4xx/pci.c              |  1 +
>  arch/powerpc/platforms/4xx/pci.h              |  1 +
>  arch/powerpc/platforms/52xx/efika.c           |  5 +--
>  arch/powerpc/platforms/52xx/mpc52xx_common.c  |  6 +---
>  arch/powerpc/platforms/52xx/mpc52xx_pci.c     |  5 +--
>  arch/powerpc/platforms/52xx/mpc52xx_pic.c     |  6 +---
>  arch/powerpc/platforms/85xx/ksi8560.c         |  6 ++--
>  arch/powerpc/platforms/85xx/p1022_ds.c        |  5 +--
>  arch/powerpc/platforms/85xx/p1022_rdk.c       |  5 +--
>  arch/powerpc/platforms/8xx/ep88xc.c           |  5 +--
>  arch/powerpc/platforms/8xx/mpc86xads.h        |  5 ++-
>  arch/powerpc/platforms/8xx/mpc86xads_setup.c  |  5 +--
>  arch/powerpc/platforms/8xx/mpc885ads.h        |  5 ++-
>  arch/powerpc/platforms/8xx/mpc885ads_setup.c  |  5 +--
>  arch/powerpc/platforms/8xx/mpc8xx.h           |  5 +--
>  arch/powerpc/platforms/8xx/pic.c              |  1 +
>  arch/powerpc/platforms/8xx/pic.h              |  1 +
>  arch/powerpc/platforms/8xx/tqm8xx_setup.c     |  5 +--
>  .../cell/spufs/spu_restore_dump.h_shipped     |  1 +
>  .../cell/spufs/spu_save_dump.h_shipped        |  1 +
>  arch/powerpc/platforms/chrp/gg2.h             |  5 +--
>  .../platforms/embedded6xx/linkstation.c       |  5 +--
>  arch/powerpc/platforms/embedded6xx/ls_uart.c  |  5 +--
>  arch/powerpc/platforms/embedded6xx/mpc10x.h   |  6 ++--
>  .../platforms/embedded6xx/storcenter.c        |  5 +--
>  arch/powerpc/platforms/microwatt/Makefile     |  1 +
>  arch/powerpc/platforms/microwatt/setup.c      |  1 +
>  arch/powerpc/platforms/pseries/ibmebus.c      | 29 +----------------
>  arch/powerpc/sysdev/cpm2.c                    |  5 +--
>  arch/powerpc/sysdev/cpm2_pic.c                |  5 +--
>  arch/powerpc/sysdev/ehv_pic.c                 |  5 +--
>  arch/powerpc/sysdev/ge/ge_pic.c               |  5 +--
>  arch/powerpc/sysdev/mpic.c                    |  5 +--
>  arch/powerpc/sysdev/rtc_cmos_setup.c          |  6 ++--
>  arch/powerpc/tools/ci-build.sh                |  1 +
>  arch/powerpc/tools/head_check.sh              |  6 +---
>  arch/powerpc/xmon/ppc.h                       | 15 ++-------
>  92 files changed, 105 insertions(+), 422 deletions(-)

You might want to change less of these at once, as this is hard to
review as-is.

> diff --git a/arch/powerpc/boot/crtsavres.S b/arch/powerpc/boot/crtsavres.S
> index 085fb2b9a8b8..25e924459dcc 100644
> --- a/arch/powerpc/boot/crtsavres.S
> +++ b/arch/powerpc/boot/crtsavres.S
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
>  /*
>   * Special support for eabi and SVR4
>   *
> @@ -7,11 +8,6 @@
>   *
>   * Based on gcc/config/rs6000/crtsavres.asm from gcc
>   *
> - * This file is free software; you can redistribute it and/or modify it
> - * under the terms of the GNU General Public License as published by the
> - * Free Software Foundation; either version 2, or (at your option) any
> - * later version.
> - *
>   * In addition to the permissions in the GNU General Public License, the
>   * Free Software Foundation gives you unlimited permission to link the
>   * compiled version of this file with other programs, and to distribute
> @@ -20,16 +16,6 @@
>   * respects; for example, they cover modification of the file, and
>   * distribution when not linked into another program.)
>   *
> - * This file is distributed in the hope that it will be useful, but
> - * WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> - * General Public License for more details.
> - *
> - * You should have received a copy of the GNU General Public License
> - * along with this program; see the file COPYING.  If not, write to
> - * the Free Software Foundation, 51 Franklin Street, Fifth Floor,
> - * Boston, MA 02110-1301, USA.
> - *
>   *    As a special exception, if you link this library with files
>   *    compiled with GCC to produce an executable, this does not cause
>   *    the resulting executable to be covered by the GNU General Public License.

Look at that "special exception", why are you ignoring it here?  You
can't do that :(

Please do these in smaller batches, perhaps one patch per type of
license and directory to make it easier to notice mistakes like this?

thanks,

greg k-h
