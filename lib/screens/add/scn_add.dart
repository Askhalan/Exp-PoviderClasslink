// ignore_for_file: use_build_context_synchronously, avoid_print, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';
import 'package:provider_student_management/utils/validators/validation.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});

  String? phoneError;
  String? mailError;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(JmSize.spaceBtwItems),
        child: Form(
          key: context.read<DataProvider>().formKey,
          child: ListView(
            children: [
              const SizedBox(height: JmSize.spaceBtwSections),

              //--------------------------------------- First NAME ---------------------------------------

              TextFormField(
                  key:context.read<DataProvider>().fnameKey,
                  controller: context.read<DataProvider>().fnameController,
                  onChanged: (value) {
                   context.read<DataProvider>().fnameKey.currentState!.validate();
                  },
                  decoration: const InputDecoration(
                    hintText: 'First Name',
                    border: InputBorder.none,
                  ),
                  validator: (value) => JValidator.validateName(value)),
              const SizedBox(height: JmSize.spaceBtwInputFields),

              //--------------------------------------- Last NAME ---------------------------------------

              TextFormField(
                  key:context.read<DataProvider>().lnameKey,
                  controller: context.read<DataProvider>().lnameController,
                  onChanged: (value) {
                   context.read<DataProvider>().lnameKey.currentState!.validate();
                  },
                  decoration: const InputDecoration(
                    hintText: 'Last Name',
                    border: InputBorder.none,
                  ),
                  validator: (value) => JValidator.validateName(value)),
              const SizedBox(height: JmSize.spaceBtwInputFields),

              //--------------------------------------- PLACE ---------------------------------------

              TextFormField(
                  key: context.read<DataProvider>().placeKey,
                  decoration: const InputDecoration(
                    hintText: 'Place',
                    border: InputBorder.none,
                  ),
                  controller: context.read<DataProvider>().placeController,
                  validator: (value) =>
                      JValidator.validateEmptyText('Place', value)),
              const SizedBox(height: JmSize.spaceBtwInputFields),

              //--------------------------------------- PHONE ---------------------------------------

              TextFormField(
                key:context.read<DataProvider>().phoneKey,
                decoration: InputDecoration(
                    hintText: 'Phone',
                    border: InputBorder.none,
                    errorText: phoneError),
                controller: context.read<DataProvider>().phoneController,
                onChanged: (value) {
                 context.read<DataProvider>().phoneKey.currentState!.validate();
                },
                validator: (value) => JValidator.validateMobileNo(value),
              ),
              const SizedBox(height: JmSize.spaceBtwInputFields),

              //--------------------------------------- MAIL ID ---------------------------------------

              TextFormField(
                  key:context.read<DataProvider>().mailidKey,
                  decoration: InputDecoration(
                      hintText: 'Mail Id',
                      border: InputBorder.none,
                      errorText: mailError),
                  controller: context.read<DataProvider>().mailidController,
                  onChanged: (value) {
                   context.read<DataProvider>().mailidKey.currentState!.validate();
                  },
                  validator: (value) => JValidator.validateEmail(value)),
              const SizedBox(height: JmSize.spaceBtwSections),

              //--------------------------------------- SAVE BTN ---------------------------------------

              ElevatedButton(
                onPressed: () {
                 context.read<DataProvider>().formKey.currentState!.validate();
                  if (context.read<DataProvider>().formKey.currentState!.validate()) {
                    context.read<DataProvider>().addStudent();
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Save',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}












