
# Chapter 6: User Management in Linux

## Introduction
Understanding user and group management is vital for securing and organizing access to system resources. This chapter provides TechoClouds students with a comprehensive guide to managing users and groups on Linux systems.

## Types of Users
- **Root Users**: Have unrestricted access to the system.
- **Regular Users**: Limited access for day-to-day tasks.
- **System Users**: For running services and applications.

## Managing Users

Linux offers `useradd` and `adduser` for adding users, each serving different needs.

- **`useradd` vs. `adduser`**:
  - `useradd` is a basic utility for adding users. Without options, it won't create a home directory.
  - `adduser` in Ubuntu is a more user-friendly command that automatically sets up a home directory and more.

### Creating Users

- **Using `useradd`**:
  - Without `-m`: No home directory is created.
    ```bash
    sudo useradd techoUser
    ```
  - With `-m`: Includes a home directory.
    ```bash
    sudo useradd -m techoUser
    ```

- **Using `adduser`**:
  - Interactive and automatically creates a home directory.
    ```bash
    sudo adduser newTechoUser
    ```

### Deleting Users
- **Using `userdel`**:
  - Removes user accounts and, with `-r`, their home directories.
    ```bash
    sudo userdel -r techoUser
    ```

### Modifying Users
- **Using `usermod`**:
  - Modify user account properties.
    ```bash
    sudo usermod -aG techoGroup techoUser
    ```

## Managing Groups
- Understanding the importance of groups in permissions management.
- **Creating and managing groups** with `groupadd`, `groupdel`, and `groupmod`.

## Understanding `/etc/passwd` and `/etc/group`
- Dive into these files for insights on system users and groups.

## Best Practices for User and Group Management
- Regular audits, adherence to the principle of least privilege, and secure management of sensitive files are recommended.

## Exercises for Mastery
- Practical tasks include creating users, modifying user properties, and managing groups to solidify understanding.

## Conclusion
Effective user and group management are foundational to maintaining a secure and organized Linux environment. By applying the concepts and practices covered, TechoClouds students are well-equipped to manage system resources confidently.
