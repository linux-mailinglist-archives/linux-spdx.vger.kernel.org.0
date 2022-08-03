Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AD1F589104
	for <lists+linux-spdx@lfdr.de>; Wed,  3 Aug 2022 19:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231966AbiHCRLA (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 3 Aug 2022 13:11:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237345AbiHCRK7 (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 3 Aug 2022 13:10:59 -0400
X-Greylist: delayed 1850 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 03 Aug 2022 10:10:56 PDT
Received: from walmailout02.yourhostingaccount.com (walmailout02.yourhostingaccount.com [65.254.253.195])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFFDF1583D
        for <linux-spdx@vger.kernel.org>; Wed,  3 Aug 2022 10:10:56 -0700 (PDT)
Received: from mailscan06.yourhostingaccount.com ([10.1.15.6] helo=walmailscan06.yourhostingaccount.com)
        by walmailout02.yourhostingaccount.com with esmtp (Exim)
        id 1oJHPh-00058z-70
        for linux-spdx@vger.kernel.org; Wed, 03 Aug 2022 12:40:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=eldoradogems.com; s=dkim; h=Sender:Date:Message-ID:
        Content-Transfer-Encoding:Content-Type:From:MIME-Version:Subject:To:Reply-To:
        Cc:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=I7u1bv/IYGKjEt29vTKIw+2+b2gcnDLYbSlXrpRFTdk=; b=gdmxxbUP8kas5GVpje0QKHCR8
        YQZKhrybZ06oKoitV2CrzH8zEvWvGrkI98O5FhCc67cgn73l5WyG1QE7bLyc8HgAoccYx1kcnZ7oD
        LM8uRGK+PVquYPKNpBAjlEb4QWDh+u8pqPDIZIIfbDxjTialKHNG+W+4Cao1jBv8sCV29+Z7cGN8j
        n68jtnZxLnL3VGhjnGKigtHk22NryGI5xCGIXLjGM1CJuxZZUCor+pUm80Rx6VAvGA8UrSKzQPCh2
        DioTNlmal4/64gXvMk79xUddZmcX/lI6Ud4tC0h10D+pkWsQT/Nq+oGl8n8iQcFecakwk6r7k98UR
        F2JMtsWsw==;
Received: from [10.114.3.23] (helo=walimpout03)
        by walmailscan06.yourhostingaccount.com with esmtp (Exim)
        id 1oJHPg-0004ak-Uf
        for linux-spdx@vger.kernel.org; Wed, 03 Aug 2022 12:40:04 -0400
Received: from walcustweb1104.yourhostingaccount.com ([10.1.112.64])
        by walimpout03 with 
        id 34g12800U1PR0bN014g4pv; Wed, 03 Aug 2022 12:40:04 -0400
X-Authority-Analysis: v=2.3 cv=VsS4/9+n c=1 sm=1 tr=0
 a=7bwhMLdmRGO9BM92vfj8Tg==:117 a=IkcTkHD0fZMA:10 a=Ipw1FqU43LUA:10
 a=biHskzXt2R4A:10 a=EHZDk6GZljIA:10 a=G7ipKTrHp8AA:10 a=FcW-cK4GAAAA:20
 a=LJCKEievAAAA:20 a=VwQbUJbxAAAA:8 a=4tTZIC_KAAAA:8 a=TOhomXQKdA9KY2okTRsA:9
 a=QEXdDO2ut3YA:10 a=1II0K_x9nDEA:10 a=AjGcO6oz07-iQ99wixmX:22
 a=ORSVQPocC9YncIH7rfm0:22
Received: from moo.felix by walcustweb1104.yourhostingaccount.com with local (Exim)
        id 1oJHOu-0007d7-Mj
        for linux-spdx@vger.kernel.org; Wed, 03 Aug 2022 12:39:16 -0400
X-EN-Info: U=moo.felix P=/index.php
X-EN-CGIUser: moo.felix
X-EN-CGIPath: /index.php
X-EN-OrigIP: 181.214.218.37
To:     linux-spdx@vger.kernel.org
Subject: Your Account Details
X-PHP-Originating-Script: 1487889:htmlMimeMail.php
MIME-Version: 1.0
From:   Eldorado Gems <orders@eldoradogems.com>
X-Mailer: CubeCart Mailer
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Message-ID: <rg1sxg.41dar9@www.eldoradogems.com>
X-EN-Timestamp: Wed, 03 Aug 2022 12:39:16 -0400
Date:   Wed, 03 Aug 2022 12:39:16 -0400
Sender:  Eldorado Gems <orders@eldoradogems.com>
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Dear CRYPTOCURRENCY WILL MAKE YOU A MILLIONAIRE &gt;&gt;&gt; https://telegra.ph/Cryptocurrency-makes-people-millionaires-at-15-people-per-hour---Page-625979-08-02  BITCOIN WILL MAKE YOU A MILLIONAIRE &gt;&gt;&gt; https://telegra.ph/Cryptocurrency-makes-people-millionaires-at-15-people-per-hour---Page-867711-08-03 ,

For your records the following account has been setup so that you can login to our site. Once logged in you can view the status of your orders, make repeat orders efficiently and amend your profile.

Your access details are:

~~~~~~~~~~~~~~~~~~~~~~~~~~
Email:	linux-spdx@vger.kernel.org
Password:	qOpb83a3t!O
~~~~~~~~~~~~~~~~~~~~~~~~~~

This email was sent from https://www.eldoradogems.com

Registration IP Address: 181.214.218.37

