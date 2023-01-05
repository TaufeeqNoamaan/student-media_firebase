// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_media_firebase/constants/global_variables.dart';

Widget NotesCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.cardColors[doc['color_id']],
        borderRadius: BorderRadius.circular(8),
        
      ),
      child: Column(
        children: [
          Text(doc['title']),
          Text(doc['Description'])
        ],
      ),
    ),
  );
}
