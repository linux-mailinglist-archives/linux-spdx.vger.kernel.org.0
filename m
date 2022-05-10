Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50C7152157E
	for <lists+linux-spdx@lfdr.de>; Tue, 10 May 2022 14:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241462AbiEJMer (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Tue, 10 May 2022 08:34:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237773AbiEJMer (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Tue, 10 May 2022 08:34:47 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AA5B3CFE9
        for <linux-spdx@vger.kernel.org>; Tue, 10 May 2022 05:30:46 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id q4so13715925plr.11
        for <linux-spdx@vger.kernel.org>; Tue, 10 May 2022 05:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:in-reply-to:references:subject:message-id:date
         :mime-version:content-transfer-encoding;
        bh=/Uk6+mfvugpmVcn0MtgCmjz89/UciEZk8TgXolM2dgo=;
        b=n6FxfYsKpIqi3zde+pLOP9XzRMqSda1yCySARTFivO1jmLF9dhZ75wsFmlMwBn+hiA
         6ghAGNeNMvK1YzOAmg+zv4TMIMiJVsEK5yXsjYgYMvUEFu/4MoXbPKmEFGHq2sDW0YH4
         uSMF8JAO1fr5raJ/f/DZpxmSa1zrmI5YE8aiWgrQ2hYO2DYmq3I+kdaap3BHfxhTi9Ft
         XmivOJ3HGlsx772bWPAO8V6QgklGYm8TY3gPT8i+tlawcY0cyc/Eif2b+bIJPHgpD9GF
         UaASh6ykmgeHgJq2czqA5t/aQzlnrIhQ3xA6Y5PVHVEhSUHl7JFl8iQaCLqTY1rMzwDm
         65SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :message-id:date:mime-version:content-transfer-encoding;
        bh=/Uk6+mfvugpmVcn0MtgCmjz89/UciEZk8TgXolM2dgo=;
        b=kvPtNEJNH9nnsD2gZQ0ecMPm3Y5rUC6Y7YKBX8DRrH9Pn/lFv7sFL3xLbfoXeiRsL5
         y0N+se/dC9IVCHWhKYqT6zPyXPyahfSdeeu4iBK17pZxC5J39nHGMB31mLLsNyz/Hb8E
         n1963rsZ9LCD/PHXBy9sphb8x+v32e98j3ZZONEM2kPWi+X6TQ1pipuZ8xaXLQxr4d07
         f0lhXnMTebvv87OnmofFu78lnERNEZLHN9LjScWl+Z0YlCfL3XzVVvcFqWTGnKT16Ktn
         JmtTSYq2x8Wv3572l8joDPnYWLotBaxs9C8+1VA3jbg1Ri4NGUWiQ20PMScHcg2ooi6m
         PhTg==
X-Gm-Message-State: AOAM530fCWKvX+pkZhYCDCrEW/zsi6vV5FJNcBV6FuOlAtSyPxkZaKOc
        VwhE2tpwTpNDCXcqwgpyl15HdEP9rtlzVCkh
X-Google-Smtp-Source: ABdhPJyR3aLGa0nNh5C8QS3v/7ySucL3Oa4b18eW9Jn9qsO4AaU3v2l8Xg4b1PPXL88tXt18wwbpgA==
X-Received: by 2002:a17:90a:fa01:b0:1d9:4008:cffc with SMTP id cm1-20020a17090afa0100b001d94008cffcmr31401680pjb.141.1652185846093;
        Tue, 10 May 2022 05:30:46 -0700 (PDT)
Received: from [127.0.1.1] ([198.8.77.157])
        by smtp.gmail.com with ESMTPSA id 13-20020a63060d000000b003c14af5062fsm10477659pgg.71.2022.05.10.05.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 05:30:45 -0700 (PDT)
From:   Jens Axboe <axboe@kernel.dk>
To:     tytso@mit.edu, Christoph Hellwig <hch@lst.de>
Cc:     linux-spdx@vger.kernel.org, linux-block@vger.kernel.org
In-Reply-To: <20220419063303.583106-2-hch@lst.de>
References: <20220419063303.583106-1-hch@lst.de> <20220419063303.583106-2-hch@lst.de>
Subject: Re: [PATCH 1/4] loop: remove loop.h
Message-Id: <165218584439.8752.11010312059919447202.b4-ty@kernel.dk>
Date:   Tue, 10 May 2022 06:30:44 -0600
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

On Tue, 19 Apr 2022 08:33:00 +0200, Christoph Hellwig wrote:
> Merge loop.h into loop.c as all the content is only used there.
> 
> 

Applied, thanks!

[1/4] loop: remove loop.h
      commit: 754d96798fab1316f4f14bb86cf3c0244cb2b20b
[2/4] loop: add a SPDX header
      commit: f21e6e185a3a95dedc0d604b468d40ff1dc71fd9
[3/4] loop: remove most the top-of-file boilerplate comment
      commit: eb04bb154b76a0633afc5d26c1de7619a6686e9b
[4/4] loop: remove most the top-of-file boilerplate comment from the UAPI header
      commit: c23d47abee3a54e4991ed3993340596d04aabd6a

Best regards,
-- 
Jens Axboe


