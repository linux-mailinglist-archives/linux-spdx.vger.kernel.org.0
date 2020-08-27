Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53C982542A2
	for <lists+linux-spdx@lfdr.de>; Thu, 27 Aug 2020 11:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727030AbgH0Jnc (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 27 Aug 2020 05:43:32 -0400
Received: from mail.kernel.org ([198.145.29.99]:48098 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726157AbgH0Jnb (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Thu, 27 Aug 2020 05:43:31 -0400
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 3642A20738;
        Thu, 27 Aug 2020 09:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1598521410;
        bh=6swQyYkYC4Z1c7XhfVxkd28d4ymWKX09l25zxnCPTsE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=C8IZPMlnAgOmvHfdnp2bPcQKpKbf6aDNvCVOyQIEPnvCwsAnUVB5t0wB/c5LBdhYL
         rI5R5iGtVyxlKvWSqLhj1lmmgmenPFV3ArvZ5OZPe01s63M4gz7qhkj9P5oC7jjGw9
         ER7wvatdCzNUCXRlIm3KKt8fh+18Ckx/3dAQrmeM=
Date:   Thu, 27 Aug 2020 11:43:44 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Mrinal Pandey <mrinalmni@gmail.com>
Cc:     skhan@linuxfoundation.org,
        Linux-kernel-mentees@lists.linuxfoundation.org,
        lukas.bulwahn@gmail.com, keescook@chromium.org, re.emese@gmail.com,
        maennich@google.com, tglx@linutronix.de, akpm@linux-foundation.org,
        kernel-hardening@lists.openwall.com, linux-kernel@vger.kernel.org,
        linux-spdx@vger.kernel.org
Subject: Re: [PATCH] scripts: Add intended executable mode and SPDX license
Message-ID: <20200827094344.GA400189@kroah.com>
References: <20200827092405.b6hymjxufn2nvgml@mrinalpandey>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200827092405.b6hymjxufn2nvgml@mrinalpandey>
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Thu, Aug 27, 2020 at 02:54:05PM +0530, Mrinal Pandey wrote:
> commit b72231eb7084 ("scripts: add spdxcheck.py self test") added the file
> spdxcheck-test.sh to the repository without the executable flag and license
> information.
> 
> commit eb8305aecb95 ("scripts: Coccinelle script for namespace
> dependencies.") added the file nsdeps, commit 313dd1b62921 ("gcc-plugins:
> Add the randstruct plugin") added the file gcc-plugins/gen-random-seed.sh
> and commit 9b4ade226f74 ("xen: build infrastructure for generating
> hypercall depending symbols") added the file xen-hypercalls.sh without the
> executable bit.
> 
> Set to usual modes for these files and provide the SPDX license for
> spdxcheck-test.sh. No functional changes.
> 
> Signed-off-by: Mrinal Pandey <mrinalmni@gmail.com>
> ---
> applies cleanly on next-20200827
> 
> Kees, Matthias, Thomas, please ack this patch.
> 
> Andrew, please pick this minor non-urgent cleanup patch once the
> mainainers ack.
> 
>  scripts/gcc-plugins/gen-random-seed.sh | 0
>  scripts/nsdeps                         | 0
>  scripts/spdxcheck-test.sh              | 1 +
>  scripts/xen-hypercalls.sh              | 0
>  4 files changed, 1 insertion(+)
>  mode change 100644 => 100755 scripts/gcc-plugins/gen-random-seed.sh
>  mode change 100644 => 100755 scripts/nsdeps
>  mode change 100644 => 100755 scripts/spdxcheck-test.sh
>  mode change 100644 => 100755 scripts/xen-hypercalls.sh

This does 2 different things in one patch, shouldn't this be 2 different
patches?  One to change the permissions and one to add the SPDX line?

thanks,

greg k-h
