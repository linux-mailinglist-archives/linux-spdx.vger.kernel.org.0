Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1841262947
	for <lists+linux-spdx@lfdr.de>; Wed,  9 Sep 2020 09:52:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727856AbgIIHwn (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Wed, 9 Sep 2020 03:52:43 -0400
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173]:38536 "EHLO
        mx0b-0016f401.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726683AbgIIHwm (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Wed, 9 Sep 2020 03:52:42 -0400
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
        by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0897THKP002323;
        Wed, 9 Sep 2020 00:52:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com; h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pfpt0220;
 bh=5ZFf+00m+Z9AHL1BXPxRAa9/d2QM/IBTr8+oNq8HF/w=;
 b=FOtGqEmvKY27Mnl/4VEeBUNcfgMWaTsn0XhLOd26snSuVc7C+3N6/GN0KM64/7Td1Jq2
 ctMPsPtD93gYvfgKZqajInZE+D9lLoUlDUG7pb2Xu/DYj0YNF4LEWUcf7oa4aiFXsu9E
 /FquEL1p9B0HtJJcJ2POwAXOryx/Cx2kNwMN3GaU9OMRKAeYHXbdexoEap0qEy8H0GLU
 bQQSZAcVZyH2OJIJRz0I/6kzdkYQp1cH0TuhH166Mtu7UO6YcsfHkF8JqWeEWtMSPfTu
 NI6ZnOyVL5syVNsEwgLk2yABIIdqx0O12AxqkCNobxNwBMCIkcPHVZli9rGthIbokT1M yw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
        by mx0b-0016f401.pphosted.com with ESMTP id 33ccvr5mex-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
        Wed, 09 Sep 2020 00:52:38 -0700
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Wed, 9 Sep
 2020 00:52:37 -0700
Received: from maili.marvell.com (10.69.176.80) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 9 Sep 2020 00:52:37 -0700
Received: from [10.6.200.75] (NN-LT0019.marvell.com [10.6.200.75])
        by maili.marvell.com (Postfix) with ESMTP id 46EFD3F703F;
        Wed,  9 Sep 2020 00:52:34 -0700 (PDT)
Subject: Re: [EXT] [PATCH 3/5] net/qlcnic: Convert to SPDX license identifiers
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        <linux-spdx@vger.kernel.org>
CC:     <linux-kernel@vger.kernel.org>
References: <20200908123451.7215-1-lukas.bulwahn@gmail.com>
 <20200908123451.7215-4-lukas.bulwahn@gmail.com>
From:   Igor Russkikh <irusskikh@marvell.com>
Message-ID: <25a5ea3c-fcc6-15a4-cdd3-6226d1700f96@marvell.com>
Date:   Wed, 9 Sep 2020 10:52:33 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:81.0) Gecko/20100101
 Thunderbird/81.0
MIME-Version: 1.0
In-Reply-To: <20200908123451.7215-4-lukas.bulwahn@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-09_03:2020-09-08,2020-09-09 signatures=0
Sender: linux-spdx-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org


> From: Thomas Gleixner <tglx@linutronix.de>
> 
> All files in this driver directory contain the following notice:
> 
>   See LICENSE.qlcnic for copyright and licensing details.
> 
> LICENSE.qlacnic can be found in
> Documentation/networking/device_drivers/qlogic/. The file contains:
> 
>   - A copyright notice
> 
>     This copyright notice is redundant as all files contain the same
>     copyright notice already
> 
>   - A license notice
> 
>     You may modify and redistribute the device driver code under the
>     GNU General Public License (a copy of which is attached hereto as
>     Exhibit A) published by the Free Software Foundation (version 2).
> 
>     This can be replaced with the corresponding SPDX license identifier
>     (GPL-2.0-only) in the source files which reference this license
>     file.
> 
>   - The full GPLv2 license text
> 
>     A redundant copy of LICENSES/preferred/GPL-2.0
> 
> Remove the notices and add the SPDX license identifier GPL-2.0-only to the
> source files.
> 
> Finally remove the now redundant LICENSE.qlcnic file.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Reviewed-by: Richard Fontana <rfontana@redhat.com>
> Reviewed-by: Jilayne Lovejoy <opensource@jilayne.com>
> Reviewed-by: Alexios Zavras <alexios.zavras@intel.com>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Acked-by: Igor Russkikh <irusskikh@marvell.com>


Thanks,
  Igor
