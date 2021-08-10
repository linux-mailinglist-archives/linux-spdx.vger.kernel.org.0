Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4753E7DE1
	for <lists+linux-spdx@lfdr.de>; Tue, 10 Aug 2021 18:57:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbhHJQ6R (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 10 Aug 2021 12:58:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229474AbhHJQ6R (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 10 Aug 2021 12:58:17 -0400
Received: from casper.infradead.org (casper.infradead.org [IPv6:2001:8b0:10b:1236::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4E4C0613C1
        for <linux-spdx@vger.kernel.org>; Tue, 10 Aug 2021 09:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=5lFbX9win0MFkQJdrlkyjn0b0RfchTDxmvzmgtHCsBw=; b=HdwxwrYbXTb9yCwEXNij5lj+6e
        DKpr8a3JNoxinuoaBUzn1i7fp8x93msEQ737/cTAodODqhzAlJ9AAX3fi54VHK/fLXOAS1NBH3ChY
        BXUHw/JfnIiENl4plAm5IF+ZiiV3Ru9UAEfWN9AGRCXx7q5FqPoz/fguEYHMCo3C46gVH02xkzkU/
        QeAj5h5qjayIOUK0ljmpH8Lpt+lGxXhqoaFYRjEIzZBahLeszsGMjTW/CSfBKRLEGSkyS5MYqWsWi
        KfEakYOUxqHl3Wh86CTP+/RKMkKTqI+iLG3F8GYYNJg/AGnefGgEWAkf94l3m5nFjEGgwxtkLzesD
        50fMsKHQ==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
        id 1mDV3x-00CN3S-MA; Tue, 10 Aug 2021 16:57:22 +0000
Date:   Tue, 10 Aug 2021 17:57:13 +0100
From:   Christoph Hellwig <hch@infradead.org>
To:     Nicky Chorley <ndchorley@gmail.com>
Cc:     Greg KH <gregkh@linuxfoundation.org>, linux-spdx@vger.kernel.org
Subject: Re: Fwd: scripts/spdxcheck.py's third-party dependencies
Message-ID: <YRKv6cpxaUfa6Abv@infradead.org>
References: <efcdf26-fd74-3d7d-25b1-d77ed3c493@rigel.lan>
 <CAG-xSoY-Z=AD8KhXrJvzqgA+mYZwUGEbAQ7UfPEbH6e4g7VD4w@mail.gmail.com>
 <YP+sCqNlB2g/srHc@kroah.com>
 <CAG-xSobn6hyMpuhiwMLpTQ7X00xQRNW6-jf9pk5g2UfApzHBsw@mail.gmail.com>
 <YQvX4u/H8cV1pAPu@kroah.com>
 <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42bfb9dc-3bbf-eba6-d1e9-ae56bc49f94@rigel.lan>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by casper.infradead.org. See http://www.infradead.org/rpr.html
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Fri, Aug 06, 2021 at 07:44:41AM +0100, Nicky Chorley wrote:
> On Thu, 5 Aug 2021, Greg KH wrote:
> 
> > But we do not use pip to do kernel builds, so what is this going to help
> > with?
> 
> It's just about making people's lives easier for running the spdxcheck.py
> script - not everyone will have the third-party libraries installed, so
> listing them means they can be installed easily. For example:

I think the most useful thing here would be to find a way to make
spdxcheck just work without the non-standard python module.  As far
as I can tell it uses the module only to do the recursive travesal
of the current tree anyway, which seems rather pointless to start with.
