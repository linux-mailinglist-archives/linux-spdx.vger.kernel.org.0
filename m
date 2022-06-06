Return-Path: <linux-spdx-owner@vger.kernel.org>
X-Original-To: lists+linux-spdx@lfdr.de
Delivered-To: lists+linux-spdx@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0412553EEFB
	for <lists+linux-spdx@lfdr.de>; Mon,  6 Jun 2022 21:58:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232789AbiFFT6k (ORCPT <rfc822;lists+linux-spdx@lfdr.de>);
        Mon, 6 Jun 2022 15:58:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232761AbiFFT6i (ORCPT
        <rfc822;linux-spdx@vger.kernel.org>); Mon, 6 Jun 2022 15:58:38 -0400
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B914C25C5F
        for <linux-spdx@vger.kernel.org>; Mon,  6 Jun 2022 12:58:36 -0700 (PDT)
Message-ID: <20220606195512.348082298@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020; t=1654545515;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Gik+gTo1UEjT9DAApBz86g1G7d8HG6jfNgvGN/LBYoM=;
        b=Y7QXQFrUq2EKQHz9FPtv94W+XeXTarx0dtkk9BGzOdcXSBezjzL0orK6OTHcaiv+evBdrh
        znxsqeko1RntxPCslTj46zheB9W1TeIqFAwtn6lfz1jFhK7AtVgqOFpVQE9Wh5cpVdQ5gk
        +qZ0d7qFKNH/YgSLkWuPbglHNY46SCRAKxzKAdr73zn3WVNdsalc+fokZQ+5lAgSpHkphE
        /mIAcr6M4TS5Mgg6JK5DKPZM30IIrRn09skvGO3HvkIlGMQJ9xp0MDksDKk4vJMvJB6ykX
        cnzaD4MstUyM/sWTpO6dVbHWpeAvyTtcnAWU1MVJw5JJPDBsDGNPz2GfCcqESw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
        s=2020e; t=1654545515;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=Gik+gTo1UEjT9DAApBz86g1G7d8HG6jfNgvGN/LBYoM=;
        b=mio52aRdcdB+gu5NEij83FdfPlUhUEN30iGj42l6qMcnmwPuT2cZDNB3oXWFno9doKyNJu
        O6jyFPkbbLE3Q5Cw==
From:   Thomas Gleixner <tglx@linutronix.de>
To:     linux-spdx@vger.kernel.org
Subject: [Batch 1 - patch 08/25] treewide: Replace GPLv2 boilerplate/reference
 with SPDX - gpl-2.0_152.RULE
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Date:   Mon,  6 Jun 2022 21:58:34 +0200 (CEST)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-spdx.vger.kernel.org>
X-Mailing-List: linux-spdx@vger.kernel.org

Rm9sa3MhClJlZmVyZW5jZXM6IDwyMDIyMDYwNjE5NDA0Mi40Mjg1Njg5MzJAbGludXRyb25peC5k
ZT4KTUlNRS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVU
Ri04CgpCYXNlZCBvbiB0aGUgbm9ybWFsaXplZCBwYXR0ZXJuOgoKICAgIHRoaXMgc29mdHdhcmUg
aXMgZGlzdHJpYnV0ZWQgdW5kZXIgdGhlIHRlcm1zIG9mIHRoZSBnbnUgZ2VuZXJhbCBwdWJsaWMK
ICAgIGxpY2Vuc2UgKCBncGwgKSB2ZXJzaW9uIDIgYXMgcHVibGlzaGVkIGJ5IHRoZSBmcmVlIHNv
ZnR3YXJlIGZvdW5kYXRpb24KICAgIHRoaXMgc29mdHdhcmUgaXMgcHJvdmlkZWQgYnkgdGhlIGNv
cHlyaWdodCBob2xkZXJzIGFuZCBjb250cmlidXRvcnMgYXMKICAgIGlzIGFuZCBhbnkgZXhwcmVz
cyBvciBpbXBsaWVkIHdhcnJhbnRpZXMgaW5jbHVkaW5nIGJ1dCBub3QgbGltaXRlZCB0bwogICAg
dGhlIGltcGxpZWQgd2FycmFudGllcyBvZiBtZXJjaGFudGFiaWxpdHkgYW5kIGZpdG5lc3MgZm9y
IGEgcGFydGljdWxhcgogICAgcHVycG9zZSBhcmUgZGlzY2xhaW1lZCBpbiBubyBldmVudCBzaGFs
bCB0aGUgY29weXJpZ2h0IG93bmVyIG9yCiAgICBjb250cmlidXRvcnMgYmUgbGlhYmxlIGZvciBh
bnkgZGlyZWN0IGluZGlyZWN0IGluY2lkZW50YWwgc3BlY2lhbAogICAgZXhlbXBsYXJ5IG9yIGNv
bnNlcXVlbnRpYWwgZGFtYWdlcyAoaW5jbHVkaW5nIGJ1dCBub3QgbGltaXRlZCB0bwogICAgcHJv
Y3VyZW1lbnQgb2Ygc3Vic3RpdHV0ZSBnb29kcyBvciBzZXJ2aWNlcyBsb3NzIG9mIHVzZSBkYXRh
IG9yCiAgICBwcm9maXRzIG9yIGJ1c2luZXNzIGludGVycnVwdGlvbikgaG93ZXZlciBjYXVzZWQg
YW5kIG9uIGFueSB0aGVvcnkgb2YKICAgIGxpYWJpbGl0eSB3aGV0aGVyIGluIGNvbnRyYWN0IHN0
cmljdCBsaWFiaWxpdHkgb3IgdG9ydCAoaW5jbHVkaW5nCiAgICBuZWdsaWdlbmNlIG9yIG90aGVy
d2lzZSkgYXJpc2luZyBpbiBhbnkgd2F5IG91dCBvZiB0aGUgdXNlIG9mIHRoaXMKICAgIHNvZnR3
YXJlIGV2ZW4gaWYgYWR2aXNlZCBvZiB0aGUgcG9zc2liaWxpdHkgb2Ygc3VjaCBkYW1hZ2UKCmV4
dHJhY3RlZCBieSB0aGUgc2NhbmNvZGUgbGljZW5zZSBzY2FubmVyIHRoZSBTUERYIGxpY2Vuc2Ug
aWRlbnRpZmllcgoKICAgIEdQTC0yLjAtb25seQoKaGFzIGJlZW4gY2hvc2VuIHRvIHJlcGxhY2Ug
dGhlIGJvaWxlcnBsYXRlL3JlZmVyZW5jZS4KClNpZ25lZC1vZmYtYnk6IFRob21hcyBHbGVpeG5l
ciA8dGdseEBsaW51dHJvbml4LmRlPgotLS0KIGluY2x1ZGUvbGludXgvcGxhdGZvcm1fZGF0YS91
c2Itb21hcC5oIHwgICAxNiArLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDE1IGRlbGV0aW9ucygtKQoKLS0tIGEvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9k
YXRhL3VzYi1vbWFwLmgKKysrIGIvaW5jbHVkZS9saW51eC9wbGF0Zm9ybV9kYXRhL3VzYi1vbWFw
LmgKQEAgLTEsMjIgKzEsOCBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seSAqLwogLyoKICAqIHVzYi1vbWFwLmggLSBQbGF0Zm9ybSBkYXRhIGZvciB0aGUgdmFyaW91
cyBPTUFQIFVTQiBJUHMKICAqCiAgKiBDb3B5cmlnaHQgKEMpIDIwMTIgVGV4YXMgSW5zdHJ1bWVu
dHMgSW5jb3Jwb3JhdGVkIC0gaHR0cHM6Ly93d3cudGkuY29tCi0gKgotICogVGhpcyBzb2Z0d2Fy
ZSBpcyBkaXN0cmlidXRlZCB1bmRlciB0aGUgdGVybXMgb2YgdGhlIEdOVSBHZW5lcmFsIFB1Ymxp
YwotICogTGljZW5zZSAoIkdQTCIpIHZlcnNpb24gMiwgYXMgcHVibGlzaGVkIGJ5IHRoZSBGcmVl
IFNvZnR3YXJlIEZvdW5kYXRpb24uCi0gKgotICogVEhJUyBTT0ZUV0FSRSBJUyBQUk9WSURFRCBC
WSBUSEUgQ09QWVJJR0hUIEhPTERFUlMgQU5EIENPTlRSSUJVVE9SUyAiQVMgSVMiCi0gKiBBTkQg
QU5ZIEVYUFJFU1MgT1IgSU1QTElFRCBXQVJSQU5USUVTLCBJTkNMVURJTkcsIEJVVCBOT1QgTElN
SVRFRCBUTywgVEhFCi0gKiBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIEFO
RCBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRQotICogQVJFIERJU0NMQUlNRUQuIElO
IE5PIEVWRU5UIFNIQUxMIFRIRSBDT1BZUklHSFQgT1dORVIgT1IgQ09OVFJJQlVUT1JTIEJFCi0g
KiBMSUFCTEUgRk9SIEFOWSBESVJFQ1QsIElORElSRUNULCBJTkNJREVOVEFMLCBTUEVDSUFMLCBF
WEVNUExBUlksIE9SCi0gKiBDT05TRVFVRU5USUFMIERBTUFHRVMgKElOQ0xVRElORywgQlVUIE5P
VCBMSU1JVEVEIFRPLCBQUk9DVVJFTUVOVCBPRgotICogU1VCU1RJVFVURSBHT09EUyBPUiBTRVJW
SUNFUzsgTE9TUyBPRiBVU0UsIERBVEEsIE9SIFBST0ZJVFM7IE9SIEJVU0lORVNTCi0gKiBJTlRF
UlJVUFRJT04pIEhPV0VWRVIgQ0FVU0VEIEFORCBPTiBBTlkgVEhFT1JZIE9GIExJQUJJTElUWSwg
V0hFVEhFUiBJTgotICogQ09OVFJBQ1QsIFNUUklDVCBMSUFCSUxJVFksIE9SIFRPUlQgKElOQ0xV
RElORyBORUdMSUdFTkNFIE9SIE9USEVSV0lTRSkKLSAqIEFSSVNJTkcgSU4gQU5ZIFdBWSBPVVQg
T0YgVEhFIFVTRSBPRiBUSElTIFNPRlRXQVJFLCBFVkVOIElGIEFEVklTRUQgT0YgVEhFCi0gKiBQ
T1NTSUJJTElUWSBPRiBTVUNIIERBTUFHRS4KICAqLwogCiAjZGVmaW5lIE9NQVAzX0hTX1VTQl9Q
T1JUUwkzCgo=
