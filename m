Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF0B3D6F9E
	for <lists+linux-spdx@lfdr.de>; Tue, 27 Jul 2021 08:47:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235296AbhG0Grm (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 27 Jul 2021 02:47:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:42106 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235409AbhG0Grl (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Tue, 27 Jul 2021 02:47:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6B5F760FC0;
        Tue, 27 Jul 2021 06:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1627368460;
        bh=jAPH/V3HdTFH/QwUxD+kipseBECDUHHOsTz0x7zkZgI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hjaIiM9KfsSB4MVMzJmITsLWTOoho5k4/cygU87l+VkE6jTWSQ2giO2PmdREQ2SZo
         XPk6TEMLHtTvMJXyzyofBY3CASsVyX+KCZwo+aWmzdt4gfgtnxye8ktrrnMryTbxHg
         Xl1ydIXSTC4v0qC35TeHjA7iYag0IT+uuZqQg84k=
Date:   Tue, 27 Jul 2021 08:47:38 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Nicky Chorley <ndchorley@gmail.com>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
Message-ID: <YP+sCqNlB2g/srHc@kroah.com>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
 <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, Jul 27, 2021 at 07:42:21AM +0100, Nicky Chorley wrote:
> Resending to linux-spdx.
> 
> ---------- Forwarded message ---------
> From: Nicky Chorley <ndchorley@gmail.com>
> Date: Sun, 25 Jul 2021 at 20:35
> Subject: scripts/spdxcheck.py's third-party dependencies
> To: <tglx@linutronix.de>, <gregkh@linuxfoundation.org>
> 
> 
> Hi folks,
> 
> On linux-next (tag: next-20210723), running scripts/checkpatch.pl
> complains, with e.g.
> 
> Traceback (most recent call last):
>    File "scripts/spdxcheck.py", line 10, in <module>
>      import git
> ModuleNotFoundError: No module named 'git'
> 
> and the same for ply if you don't have those libraries installed. Would it
> be OK to add a pip requirements.txt file, so that people can use that to
> install those and not have to manually go hunt them down? In future,
> if other Python scripts needed third-party libraries, those could be
> listed in the file too (I had a quick look and didn't see any used in the
> others).
> 
> Apologies if this has already been covered somewhere - I couldn't see
> archive links for linux-spdx on vger.kernel.org.

How can you add a requirements.txt file for a single script in a
directory of other scripts?

thanks,

greg k-h
