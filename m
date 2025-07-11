Return-Path: <linux-spdx+bounces-55-lists+linux-spdx=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7539B01415
	for <lists+linux-spdx@lfdr.de>; Fri, 11 Jul 2025 09:09:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A4353A6AFF
	for <lists+linux-spdx@lfdr.de>; Fri, 11 Jul 2025 07:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1709919ABAC;
	Fri, 11 Jul 2025 07:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="F0bLXjn8"
X-Original-To: linux-spdx@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB901E261F
	for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 07:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752217757; cv=none; b=Kc5xS1GxCF7qbMqWaCmV8LC20K9qnwZGeyaqLnRVwtINFeQA945PpM75eBAF/Ca8QE2emtPhPnTVFsDRLMwEJgQAhYYStXcg5OwnnhzIupdPvfIYBI+NgLoOouqoNM1qlBEK+yX0OItfKcdqEwOfyNc4/Ei0s+xGPmduqO32hwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752217757; c=relaxed/simple;
	bh=bETnLwmqaijMFkik+F4Wsz2XGYFd+5UAIq5aNY2jDXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ounU/5+fxFTUV73YpowdzmZgrfdz6kOZmF269MYdJA73O+2rldzcM6uDr3YLFUDIMQctuTPB53B74Yv6nzew2SdSQpuxNEMR5YvDm0D3gy1o66kJjuNpKZhQEsesLq08NouuqZ3UTOwweccyuumKdMAVye+ENmNZgWVxMeycIcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=F0bLXjn8; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752217753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=Tjn8ea09hAYyGZY05rFnfwzbxRm2j2QdgLyEwncWfLM=;
	b=F0bLXjn8ODrUzown/KMGNrmBNMz/vRGg9KJ5ODQISoAy6oWXwTYK46jTPhaWiHlHR3RQpm
	PpZKEmqjAkHHwjmxxhUYihMAyYGdaZ2KGC3s4Z4tFPoc3//gxLFOropPf6F0aVEeGP2u/C
	pmOX1juAdilmEQ6wTQJsPXzepOHXnwI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-389-mBkEGKt4PC21lVwF49iKkw-1; Fri, 11 Jul 2025 03:09:12 -0400
X-MC-Unique: mBkEGKt4PC21lVwF49iKkw-1
X-Mimecast-MFC-AGG-ID: mBkEGKt4PC21lVwF49iKkw_1752217751
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-455e918d690so749395e9.1
        for <linux-spdx@vger.kernel.org>; Fri, 11 Jul 2025 00:09:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752217751; x=1752822551;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tjn8ea09hAYyGZY05rFnfwzbxRm2j2QdgLyEwncWfLM=;
        b=BX5syc2pZyr+XCGQ+P4567yUbvATCw0gTe16PLfqooQUOqfKPUMN1M0ZrHxhuLOrwd
         h86bZBjNouXAy9k4bMejE32HfMhkF6quNvJzqTbu5IpVyunxfNKAaCf4q8NGI2c3iHAr
         ZRGPowUNOTXjgp/+wgWJazRL3nvNUSnTDKZRLSCCnGi7JQZ8ydCpqTpLPfWqNUzpsF0y
         R2PqUxgkckYsIRef7t1ThG1mxHPg4ahpVX+jiHSdoN2epi+0XmLy1P9hs0xjpBckPSdN
         63xNwsPbD0040hZ7zP9L5w0vIIhesIRrMxxiht0sUR9U4zooUw5rF9A5J9lE4TNACtxu
         PnBg==
X-Forwarded-Encrypted: i=1; AJvYcCW2r0JG+n66/7w6oW8vaf5trmTcxs02H1K1gPf+isVQiBDN0uBkbTT6gVBXtM9mmI+ZoXyZQ98RjBWd@vger.kernel.org
X-Gm-Message-State: AOJu0YwCKkLI6dxOzG9sPB8xOWO2XZ39YGaupvM/W6wLpy9XwsPohab9
	FFhSVKq+nfhyPjdO58qRW++RzLyiMpC77lKdW4Bkg5VoEwFAiNdmcCKbT8rmx+ASycF/Sbj3ArL
	IYxZUX7p4Rm5/dnaFAkDMm3Mpr/uyU7qm1U/lQWpApYonl7RuwT6MQHmoatLdqds=
X-Gm-Gg: ASbGncuiBCCC8gi2dVDuDTQts7wa90IvTWTGS9h9l4UNmOkHSswYqsELoAWpoB3aXWt
	APH1KeO5K0POAXKYnMhdaebUq4wvLLoPxDpJBj5tD4OU1hPifj5A8PXvMbkGc5FcNX6+1gB/Mz0
	dYBr72f7NH8fKML2r9j69Qttlys6GqHTIc0vO73c9qqMGrCih5yvEFfJbVhI86QFO7TR38EIV6P
	wg7Cmk8jYics7oLDCTsbG+8CjT+7gcBJ0ZM94AJqvmeFNANzR5wNreXAySRPaWlvDfaLL28N1BM
	oRSVlqkOYbuCSYUnEytGVgmWPcNUskzepXac1485d/SGi0zL2c8u6KbU8E4Ds3DWYy6l+oEeT0Y
	6TvqB
X-Received: by 2002:a05:600c:1e02:b0:450:c9e3:91fe with SMTP id 5b1f17b1804b1-454e2a426afmr18492635e9.0.1752217750982;
        Fri, 11 Jul 2025 00:09:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyLKqZyYTcKdieu4HXWBw9vMWmwczdsUxrQjWlMbBHxItodaJAHPJRLciB88X4EIKhTPKSpQ==
X-Received: by 2002:a05:600c:1e02:b0:450:c9e3:91fe with SMTP id 5b1f17b1804b1-454e2a426afmr18492375e9.0.1752217750577;
        Fri, 11 Jul 2025 00:09:10 -0700 (PDT)
Received: from [192.168.0.6] (ltea-047-064-115-149.pools.arcor-ip.net. [47.64.115.149])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd4660c5sm38083405e9.11.2025.07.11.00.09.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 00:09:10 -0700 (PDT)
Message-ID: <9f7242e8-1082-4a5d-bb6e-a80106d1b1f9@redhat.com>
Date: Fri, 11 Jul 2025 09:09:08 +0200
Precedence: bulk
X-Mailing-List: linux-spdx@vger.kernel.org
List-Id: <linux-spdx.vger.kernel.org>
List-Subscribe: <mailto:linux-spdx+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-spdx+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] powerpc: Replace the obsolete address of the FSF
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Madhavan Srinivasan <maddy@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org, linux-spdx@vger.kernel.org
References: <20250711053509.194751-1-thuth@redhat.com>
 <2025071125-talon-clammy-4971@gregkh>
From: Thomas Huth <thuth@redhat.com>
Autocrypt: addr=thuth@redhat.com; keydata=
 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
In-Reply-To: <2025071125-talon-clammy-4971@gregkh>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: VH64q-d7PkOq64ziuBn8G7O3aTZ2f0Oyg6Xv1Eq_6eg_1752217751
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2025 07.52, Greg Kroah-Hartman wrote:
> On Fri, Jul 11, 2025 at 07:35:09AM +0200, Thomas Huth wrote:
>> From: Thomas Huth <thuth@redhat.com>
>>
>> The FSF does not reside in the Franklin street anymore. Let's update
>> the address with the link to their website, as suggested in the latest
>> revision of the GPL-2.0 license.
>> (See https://www.gnu.org/licenses/old-licenses/gpl-2.0.txt for example)
>>
>> Acked-by: Segher Boessenkool <segher@kernel.crashing.org>
>> Signed-off-by: Thomas Huth <thuth@redhat.com>
>> ---
>>   v2: Resend with CC: linux-spdx@vger.kernel.org as suggested here:
>>       https://lore.kernel.org/linuxppc-dev/e5de8010-5663-47f4-a2f0-87fd88230925@csgroup.eu
>>       
>>   arch/powerpc/boot/crtsavres.S            | 5 ++---
>>   arch/powerpc/include/uapi/asm/eeh.h      | 5 ++---
>>   arch/powerpc/include/uapi/asm/kvm.h      | 5 ++---
>>   arch/powerpc/include/uapi/asm/kvm_para.h | 5 ++---
>>   arch/powerpc/include/uapi/asm/ps3fb.h    | 3 +--
>>   arch/powerpc/lib/crtsavres.S             | 5 ++---
>>   arch/powerpc/xmon/ppc.h                  | 5 +++--
>>   7 files changed, 14 insertions(+), 19 deletions(-)
>>
>> diff --git a/arch/powerpc/boot/crtsavres.S b/arch/powerpc/boot/crtsavres.S
>> index 085fb2b9a8b89..a710a49a5dbca 100644
>> --- a/arch/powerpc/boot/crtsavres.S
>> +++ b/arch/powerpc/boot/crtsavres.S
>> @@ -26,9 +26,8 @@
>>    * General Public License for more details.
>>    *
>>    * You should have received a copy of the GNU General Public License
>> - * along with this program; see the file COPYING.  If not, write to
>> - * the Free Software Foundation, 51 Franklin Street, Fifth Floor,
>> - * Boston, MA 02110-1301, USA.
>> + * along with this program; see the file COPYING.  If not, see
>> + * <https://www.gnu.org/licenses/>.
>>    *
>>    *    As a special exception, if you link this library with files
>>    *    compiled with GCC to produce an executable, this does not cause
> 
> Please just drop all the "boilerplate" license text from these files,
> and use the proper SPDX line at the top of them instead.  That is the
> overall goal for all kernel files.

Ok, I can do that for the header files ... not quite sure about the *.S 
files though since they contain some additional text about exceptions.
I'll drop those *.S files from the next version of the patch, I think these 
likely need to be discussed separately.

  Thomas


