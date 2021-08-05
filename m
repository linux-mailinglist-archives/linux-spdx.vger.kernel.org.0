Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2FB13E14A0
	for <lists+linux-spdx@lfdr.de>; Thu,  5 Aug 2021 14:21:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241273AbhHEMWL (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Thu, 5 Aug 2021 08:22:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:45108 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232651AbhHEMWK (ORCPT <rfc822;linux-spdx@vger.kernel.org>);
        Thu, 5 Aug 2021 08:22:10 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 23FC1610FC;
        Thu,  5 Aug 2021 12:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1628166116;
        bh=3xkWvD9qN/h15ZhqHM9Q5pebeTkpvmHbgA3JuY4K+Bw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vzRgkBC6wvEoGuxDAc6dLK9b1TEtOn94vUUyTYArx5TG+SOp7gLur6jKATRnc1S2g
         4KkPJzOFjz3iCEkDLH/euBkBu6PaaSva12G2PHQYkp4ZFCLP0BgC+YeMTHVwsW0OGV
         pdbxELHCNZSTy8NwAwPfUTrYSxrR8ped/lxAvs4I=
Date:   Thu, 5 Aug 2021 14:21:54 +0200
From:   Greg KH <gregkh@linuxfoundation.org>
To:     Nicky Chorley <ndchorley@gmail.com>
Cc:     linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
Message-ID: <YQvX4u/H8cV1pAPu@kroah.com>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
 <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
 <YP+sCqNlB2g/srHc@kroah.com>
 <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Sat, Jul 31, 2021 at 12:57:43PM +0100, Nicky Chorley wrote:
> On Tue, 27 Jul 2021 at 07:47, Greg KH <gregkh@linuxfoundation.org> wrote:
> > How can you add a requirements.txt file for a single script in a
> > directory of other scripts?
> 
> You can name them (e.g. requirements-spdxcheck.txt), as pip lets you
> specify which one to use with its -r option. In addition, if one wants
> to have a different set of libraries installed for different scripts
> (or projects, generally), Python's virtual environments offer a
> lightweight way to do that.

But we do not use pip to do kernel builds, so what is this going to help
with?

I'm sorry, I do not understand the problem here...

thanks,

greg k-h
