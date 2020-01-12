Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F13F81388AF
	for <lists+linux-spdx@lfdr.de>; Mon, 13 Jan 2020 00:12:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727494AbgALXMJ (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Sun, 12 Jan 2020 18:12:09 -0500
Received: from mail02.vodafone.es ([217.130.24.81]:44916 "EHLO
        mail02.vodafone.es" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727323AbgALXMJ (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Sun, 12 Jan 2020 18:12:09 -0500
IronPort-SDR: 0Cc5qvwdgJ+PYwn6BX9TA0jkPWoG+6XfyhswfJeHI/OQ1XlKJPrxp7qHSjjcNqmVv9Q1VbPboh
 h8sR52upuFAg==
IronPort-PHdr: =?us-ascii?q?9a23=3AwdmfVh16i4eEAMHDsmDT+DRfVm0co7zxezQtwd?=
 =?us-ascii?q?8ZseIfKvad9pjvdHbS+e9qxAeQG9mCsLQe1bud6/CocFdDyK7JiGoFfp1IWk?=
 =?us-ascii?q?1NouQttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBA?=
 =?us-ascii?q?j0OxZrKeTpAI7SiNm82/yv95HJbAhEmTSwbalsIBi3qQjdudUajIh/Iast1x?=
 =?us-ascii?q?XFpWdFdf5Lzm1yP1KTmBj85sa0/JF99ilbpuws+c1dX6jkZqo0VbNXAigoPG?=
 =?us-ascii?q?Az/83rqALMTRCT6XsGU2UZiQRHDg7Y5xznRJjxsy/6tu1g2CmGOMD9UL45VS?=
 =?us-ascii?q?i+46ptVRTkjiALOSMl/27Nj8xxjLtXrQympxxl247UZ5uVO+BifqzDZN8VW2?=
 =?us-ascii?q?xBUt9NWixdHoOzdZcAD+ofMuZdsYb9oUcOoQKgCgmqHe/hzThIhnno0qw6yu?=
 =?us-ascii?q?guDwfG1xEkE98ArHjYsND5OaEPWu630abI1y3OYf1W1zfn9obGcQ0vrv6QUr?=
 =?us-ascii?q?x/asfR1UsiGB/ZglmMtYDpITWY3fkNvWiB6OpgUPqihXQ5pAFtvDev3NonhY?=
 =?us-ascii?q?nOhoITxVDP6CJ0wJ4rKt2kVkF7e9ClEJxWtyGVLIZ2QtgiTHp0tyog1rIGvp?=
 =?us-ascii?q?u7cDIKyJQk3hPSbeGMfYuQ4h/7SuqdPDV1iGh4dL+xmxq+61asx+LmWsS60F?=
 =?us-ascii?q?tHqDdOnMPWuXAXzRPT79CKSv56/ki8xzmCzxvT6uRYIUAskqrbNoIhzqYwlp?=
 =?us-ascii?q?UNtUTDGTf7mEDsg6+XckUk4Pan6+D7brjpvJOcKYh0hRzkPaQgncy/B/o3Ph?=
 =?us-ascii?q?IQUGiA4ei81bvj8lPlQLhSkPE6j6vUvIrHKckVuqK1GRFZ34k55xuxDzqqyN?=
 =?us-ascii?q?EYkmMGLFJBdhKHlY/pO1TWLfDgE/i/n0qjkC1lxvDBOL3hDY7ALnjYkLj6Yb?=
 =?us-ascii?q?lx8VJTyA02zdxF55JUCakNIOjvVU/pqNzYEhg5PhSww+bmDtV9y4wfVXuUAq?=
 =?us-ascii?q?+BLazTvkSF5vwgI+aSfo8ZojX9JOY/5/7ok3A5nUURfa6z3ZsYOziEGaFiIk?=
 =?us-ascii?q?OEcT/3mtsROXkFsxB4T+HwjlCGFzlJaCWIUro49w08XbqrEYrZDr+qhrPJiD?=
 =?us-ascii?q?+2ApBMeWdABVCPEWzifK2LXv4NbGSZJco3wRIeUr30c4I92Avmiwj8xPIzNu?=
 =?us-ascii?q?fI9zcHspTs/Nhu7eaVnhY3szx3WZfOm1qRRn15yzpbDwQ927py9Bclklo=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FHSwBVpxtemCMYgtkUBjMYGwEBAQE?=
 =?us-ascii?q?BAQEFAQEBEQEBAwMBAQGBewIBgT0CCYFNUiASk1CBTR+DQ4tjgQCDHhWGCBM?=
 =?us-ascii?q?MgVsNAQEBAQE1AgEBhEBOAReBDyQ6BA0CAw0BAQUBAQEBAQUEAQECEAEBAQE?=
 =?us-ascii?q?BBg0LBimFSoIdDB4BBAEBAQEDAwMBAQwBg10HGQ85SkwBDgFTgwSCSwEBM4U?=
 =?us-ascii?q?pl34BjQQNDQKFHYI8BAqBCYEaI4E0AgEBjBcagUE/gSMhgisIAYIBgn8BEgF?=
 =?us-ascii?q?sgkiCWQSNQhIhgQeIKZgXgkEEdolMjAKCNwEPiAGEMQMQgkUPgQmIA4ROgX2?=
 =?us-ascii?q?jN1eBDA16cTMagiYagSBPGA2IG44tQIEWEAJPi2KCMgEB?=
X-IPAS-Result: =?us-ascii?q?A2FHSwBVpxtemCMYgtkUBjMYGwEBAQEBAQEFAQEBEQEBA?=
 =?us-ascii?q?wMBAQGBewIBgT0CCYFNUiASk1CBTR+DQ4tjgQCDHhWGCBMMgVsNAQEBAQE1A?=
 =?us-ascii?q?gEBhEBOAReBDyQ6BA0CAw0BAQUBAQEBAQUEAQECEAEBAQEBBg0LBimFSoIdD?=
 =?us-ascii?q?B4BBAEBAQEDAwMBAQwBg10HGQ85SkwBDgFTgwSCSwEBM4Upl34BjQQNDQKFH?=
 =?us-ascii?q?YI8BAqBCYEaI4E0AgEBjBcagUE/gSMhgisIAYIBgn8BEgFsgkiCWQSNQhIhg?=
 =?us-ascii?q?QeIKZgXgkEEdolMjAKCNwEPiAGEMQMQgkUPgQmIA4ROgX2jN1eBDA16cTMag?=
 =?us-ascii?q?iYagSBPGA2IG44tQIEWEAJPi2KCMgEB?=
X-IronPort-AV: E=Sophos;i="5.69,426,1571695200"; 
   d="scan'208";a="323593155"
Received: from mailrel04.vodafone.es ([217.130.24.35])
  by mail02.vodafone.es with ESMTP; 13 Jan 2020 00:12:06 +0100
Received: (qmail 24470 invoked from network); 12 Jan 2020 05:00:21 -0000
Received: from unknown (HELO 192.168.1.3) (quesosbelda@[217.217.179.17])
          (envelope-sender <peterwong@hsbc.com.hk>)
          by mailrel04.vodafone.es (qmail-ldap-1.03) with SMTP
          for <linux-spdx@vger.kernel.org>; 12 Jan 2020 05:00:21 -0000
Date:   Sun, 12 Jan 2020 06:00:20 +0100 (CET)
From:   Peter Wong <peterwong@hsbc.com.hk>
Reply-To: Peter Wong <peterwonghkhsbc@gmail.com>
To:     linux-spdx@vger.kernel.org
Message-ID: <25955385.460808.1578805221421.JavaMail.cash@217.130.24.55>
Subject: Investment opportunity
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Greetings,
Please read the attached investment proposal and reply for more details.
Are you interested in loan?
Sincerely: Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.

